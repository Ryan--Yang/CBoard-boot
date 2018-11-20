package org.cboard.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by yfyuan on 2016/12/21.
 */
@Mapper
@Repository
public interface MenuDao {
    List<Long> getMenuIdByUserRole(Long userId);

    List<Long> getMenuIdByRoleAdmin(Long userId);
}
