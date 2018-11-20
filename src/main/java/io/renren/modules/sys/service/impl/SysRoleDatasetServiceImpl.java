package io.renren.modules.sys.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.modules.sys.dao.SysRoleDatasetDao;
import io.renren.modules.sys.entity.SysRoleDatasetEntity;
import io.renren.modules.sys.service.SysRoleDatasetService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;


/**
 * @Author: zhangjianping
 * @Date: 2018-11-14
 * @Param: 
 * @Return: 
 * @Description:  角色与数据集对应关系
 */
@Service("sysRoleDatasetService")
public class SysRoleDatasetServiceImpl extends ServiceImpl<SysRoleDatasetDao, SysRoleDatasetEntity> implements SysRoleDatasetService {

	@Override
	@Transactional(rollbackFor = Exception.class)
	public void saveOrUpdate(Long roleId, List<Long> datasetIdList) {
		//先删除角色与菜单关系
		deleteBatch(new Long[]{roleId});

		if(datasetIdList.size() == 0){
			return ;
		}

		//保存角色与菜单关系
		List<SysRoleDatasetEntity> list = new ArrayList<>(datasetIdList.size());
		for(Long menuId : datasetIdList){
			SysRoleDatasetEntity sysRoleDatasetEntity = new SysRoleDatasetEntity();
			sysRoleDatasetEntity.setDatasetId(menuId);
			sysRoleDatasetEntity.setRoleId(roleId);

			list.add(sysRoleDatasetEntity);
		}
		//this.insertBatch(list);
		this.saveBatch(list);
	}

	@Override
	public List<Long> queryDatasetIdList(Long roleId) {
		return baseMapper.queryDatasetIdList(roleId);
	}

	@Override
	public int deleteBatch(Long[] roleIds){
		return baseMapper.deleteBatch(roleIds);
	}

}
