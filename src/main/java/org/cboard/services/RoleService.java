package org.cboard.services;

import org.cboard.dao.RoleDao;
import org.cboard.pojo.DashboardRole;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by yfyuan on 2016/12/14.
 */
@Service
public class RoleService {

    public static final String RES_BOARD = "board";

    @Value("${admin_user_id}")
    private String adminUserId;

    @Autowired
    private RoleDao roleDao;


    public List<Long> getResRole(String resType) {
        //TODO 增加获取当前用户
        String userid = "1";
        return roleDao.getRoleResByResIds(userid, resType);
    }

    public List<DashboardRole> getCurrentRoleList(){
        //TODO 增加获取当前用户
        String userid = "1";
        if (userid.equals(adminUserId)) {
            return roleDao.getRoleListAll();
        }
        return roleDao.getCurrentRoleList(userid);
    }
}
