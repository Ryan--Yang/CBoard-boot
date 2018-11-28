/**
 * Copyright 2018 人人开源 http://www.renren.io
 * <p>
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 * <p>
 * http://www.apache.org/licenses/LICENSE-2.0
 * <p>
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */

package io.renren.modules.sys.shiro;


import io.renren.common.utils.Constant;
import io.renren.common.utils.RedisKeys;
import io.renren.modules.sys.dao.*;
import io.renren.modules.sys.entity.SysMenuEntity;
import io.renren.modules.sys.entity.SysUserEntity;
import org.apache.commons.lang.StringUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authc.credential.CredentialsMatcher;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.cboard.dao.DatasetDao;
import org.cboard.dao.DatasourceDao;
import org.cboard.pojo.DashboardDataset;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

import java.util.*;
import java.util.concurrent.TimeUnit;

/**
 * 认证
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2016年11月10日 上午11:55:49
 */
@Component
public class UserRealm extends AuthorizingRealm {
	@Autowired
    private SysUserDao sysUserDao;

    @Autowired
    private SysMenuDao sysMenuDao;

    @Autowired
    private DatasetDao datasetDao;

    @Autowired
    private SysUserRoleDao sysUserRoleDao;

    @Autowired
    private SysRoleDao sysRoleDao;

    @Autowired
    private SysRoleDatasetDao sysRoleDatasetDao;

    @Autowired
    private RedisTemplate redisTemplate;
    
    /**
     * 授权(验证权限时调用)
     */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		SysUserEntity user = (SysUserEntity)principals.getPrimaryPrincipal();
		Long userId = user.getUserId();

       // System.out.println("******************************* origin: " + redisTemplate.opsForValue().get(RedisKeys.getAuthoritySessionKey(userId)));
		String perms1 = (String) redisTemplate.opsForValue().get(RedisKeys.getAuthoritySessionKey(userId));
        //List<String> permsList = (List<String>) redisTemplate.opsForValue().get(RedisKeys.getAuthoritySessionKey(userId));

		//系统管理员，拥有最高权限
//		if(userId == Constant.SUPER_ADMIN){
//			List<SysMenuEntity> menuList = sysMenuDao.selectList(null);
//			permsList = new ArrayList<>(menuList.size());
//			for(SysMenuEntity menu : menuList){
//				permsList.add(menu.getPerms());
//			}
//		}else{
//			permsList = sysUserDao.queryAllPerms(userId);
//		}

		String perms = perms1.substring(1, perms1.length()-1);
        List<String> permsList = Arrays.asList(perms.split(","));
       // System.out.println("*********************** permList size: " + permsList.size());

		//用户权限列表
		Set<String> permsSet = new HashSet<>();
		for(String perm : permsList){
			if(StringUtils.isBlank(perm) || perm == null){
				continue;
			}
			permsSet.addAll(Arrays.asList(perm.trim().split(",")));
		}
        //System.out.println("************************* permsSet size: " + permsSet.size());
        //System.out.println("************************* permsSet: " + permsSet);

		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		info.setStringPermissions(permsSet);
		return info;
	}

	/**
	 * 认证(登录时调用)
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken authcToken) throws AuthenticationException {
		UsernamePasswordToken token = (UsernamePasswordToken)authcToken;

		//从数据库中查询用户信息
		SysUserEntity user = new SysUserEntity();
		user.setUsername(token.getUsername());
		user = sysUserDao.selectOne(user);

		//账号不存在
		if(user == null) {
			throw new UnknownAccountException("账号不存在");
		}

		//账号锁定
		if(user.getStatus() == 0){
			throw new LockedAccountException("账号已被锁定,请联系管理员");
		}

		Long userId = user.getUserId();

		List<String> permsList;

		//系统管理员，拥有最高权限
		if(userId == Constant.SUPER_ADMIN){

			List<DashboardDataset> datasetList = datasetDao.selectList(null);
			permsList = new ArrayList<>();

			/*//获取所有资源权限
            List<SysMenuEntity> menuList = sysMenuDao.selectList(null);
            for(SysMenuEntity menu : menuList){
                permsList.add(menu.getPerms());
            }*/

            /*//获取所有数据集的权限
			for(DashboardDataset dataset : datasetList){
			    permsList.add(dataset.getPermission());
			}*/

			//根据用户id<->角色id<>数据集id，获取相应权限
            for(DashboardDataset dataset : datasetList){
                List<Long> roleList = sysUserRoleDao.queryRoleIdList(userId);
                List<Long> datasetIdList = new ArrayList<>();
                for(Long roleId : roleList){
                    datasetIdList.addAll(sysRoleDatasetDao.queryDatasetIdList(roleId));
                }
                if(datasetIdList.contains(dataset.getDatasetId())){
                    permsList.add(dataset.getPermission());
                }
            }
            System.out.println("------------- perms size: " + permsList.size());
            System.out.println("------------- perms: " + permsList);
		}else{
            List<DashboardDataset> datasetList = datasetDao.selectList(null);
            permsList = new ArrayList<>();
            for(DashboardDataset dataset : datasetList){
                List<Long> roleList = sysUserRoleDao.queryRoleIdList(userId);
                List<Long> datasetIdList = new ArrayList<>();
                for(Long roleId : roleList){
                    datasetIdList.addAll(sysRoleDatasetDao.queryDatasetIdList(roleId));
                }
                if(datasetIdList.contains(dataset.getDatasetId())){
                    permsList.add(dataset.getPermission());
                }
            }
		}
        redisTemplate.opsForValue().set(RedisKeys.getAuthoritySessionKey(userId), permsList.toString());
        //60分钟过期
        redisTemplate.expire(RedisKeys.getAuthoritySessionKey(userId), 60, TimeUnit.MINUTES);

		SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(user, user.getPassword(), ByteSource.Util.bytes(user.getSalt()), getName());
		return info;
	}

	@Override
	public void setCredentialsMatcher(CredentialsMatcher credentialsMatcher) {
		HashedCredentialsMatcher shaCredentialsMatcher = new HashedCredentialsMatcher();
		shaCredentialsMatcher.setHashAlgorithmName(ShiroUtils.hashAlgorithmName);
		shaCredentialsMatcher.setHashIterations(ShiroUtils.hashIterations);
		super.setCredentialsMatcher(shaCredentialsMatcher);
	}
}
