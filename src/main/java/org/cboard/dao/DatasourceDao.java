package org.cboard.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.cboard.pojo.DashboardDatasource;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * Created by yfyuan on 2016/8/15.
 */
@Mapper
@Repository
public interface DatasourceDao {

    String getDatasourceConfig(@Param("userId") Long userId,@Param("datasourceId") Long datasourceId);

    List<DashboardDatasource> getDatasourceList(Long userId);

    List<DashboardDatasource> getDatasourceListAdmin(Long userId);

    DashboardDatasource getDatasource(Long datasourceId);

    int save(DashboardDatasource dashboardDatasource);

    long countExistDatasourceName(Map<String, Object> map);

    int update(DashboardDatasource dashboardDatasource);

    int delete(@Param("datasourceId") Long datasourceId,@Param("userId") Long userId);

    long checkDatasourceRole(@Param("userId") Long userId, @Param("datasourceId") Long datasourceId);
}
