package io.renren.config;

import io.renren.common.exception.RRException;
import io.renren.common.utils.Constant;
import io.renren.common.utils.RedisKeys;
import io.renren.common.utils.SpringContextUtils;
import io.renren.modules.sys.entity.SysUserEntity;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authz.AuthorizationFilter;
import org.springframework.data.redis.core.RedisTemplate;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import java.net.URI;
import java.util.List;

/**
 * @author ryan--yang
 * @email yangrui@cetcbigdata.com
 * @date 2018-9-4 15:23
 */


public class CustomRolesAuthorizationFilter extends AuthorizationFilter {

    @Override
    protected boolean isAccessAllowed(ServletRequest servletRequest, ServletResponse servletResponse, Object o) throws Exception {
        Subject subject = getSubject(servletRequest,servletResponse);
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        String localAddr = request.getRequestURI();

        URI url = new URI(localAddr);

        PrincipalCollection principals = subject.getPrincipals();
        if(principals == null){ //如果未登录则跳转到登录页面
            this.redirectToLogin(servletRequest,servletResponse);
            return true;
        }
        SysUserEntity user = (SysUserEntity)principals.getPrimaryPrincipal();
        Long userId = user.getUserId();

        //系统管理员，拥有最高权限
        if (userId == Constant.SUPER_ADMIN){
            return true;
        }
        /*List<String> permsList = (List<String>)*/
        RedisTemplate redisTemplate = (RedisTemplate)SpringContextUtils.getBean("redisTemplate");
        List<String> permList =  (List<String>) redisTemplate.opsForValue().get(RedisKeys.getAuthoritySessionKey(userId));
        if (permList != null && !permList.contains(url.getPath())){//进行权限匹配，针对api和页面url进行匹配
            throw new RRException("无权访问");
        }
       // Session session = subject.getSession();
        return true;
    }
}
