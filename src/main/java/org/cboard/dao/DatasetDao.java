package org.cboard.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.cboard.pojo.DashboardDataset;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * Created by yfyuan on 2016/10/11.
 */
@Mapper
@Repository
public interface DatasetDao extends BaseMapper<DashboardDataset> {

    List<String> getCategoryList();

    List<DashboardDataset> getAllDatasetList();

    List<DashboardDataset> getDatasetList(Long userId);

    List<DashboardDataset> getDatasetListAdmin(Long userId);

    int save(DashboardDataset dataset);

    long countExistDatasetName(Map<String, Object> map);

    int update(DashboardDataset dataset);

    int delete(Long userId, Long datasetId);

    DashboardDataset getDataset(Long datasetId);

    long checkDatasetRole(Long userId, Long datasetId);

}
