package org.cboard.services;

import com.alibaba.fastjson.JSONObject;
import org.apache.commons.lang3.StringUtils;
import org.cboard.dao.DatasetDao;
import org.cboard.pojo.DashboardDataset;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by yfyuan on 2016/10/11.
 */
@Service
public class DatasetService {

    @Autowired
    private DatasetDao datasetDao;

    public ServiceStatus save(Long userId, String json) {
        JSONObject jsonObject = JSONObject.parseObject(json);
        DashboardDataset dataset = new DashboardDataset();
        dataset.setUserId(userId);
        dataset.setDatasetName(jsonObject.getString("name"));
        dataset.setDataJson(jsonObject.getString("data"));
        dataset.setCategoryName(jsonObject.getString("categoryName"));
        if (StringUtils.isEmpty(dataset.getCategoryName())) {
            dataset.setCategoryName("默认分类");
        }
        Map<String, Object> paramMap = new HashMap<String, Object>();
        paramMap.put("dataset_name", dataset.getDatasetName());
        paramMap.put("user_id", dataset.getUserId());
        paramMap.put("category_name", dataset.getCategoryName());
        if (datasetDao.countExistDatasetName(paramMap) <= 0) {
            datasetDao.save(dataset);
            return new ServiceStatus(ServiceStatus.Status.Success, "success");
        } else {
            return new ServiceStatus(ServiceStatus.Status.Fail, "Duplicated name");
        }
    }

    public ServiceStatus update(Long userId, String json) {
        System.out.println("json: " + json);
        JSONObject jsonObject = JSONObject.parseObject(json);
        DashboardDataset dataset = new DashboardDataset();
        dataset.setUserId(userId);
        dataset.setDatasetId(jsonObject.getLong("id"));
        dataset.setDatasetName(jsonObject.getString("name"));
        dataset.setCategoryName(jsonObject.getString("categoryName"));
        dataset.setDataJson(jsonObject.getString("data"));
        dataset.setUpdateTime(new Timestamp(Calendar.getInstance().getTimeInMillis()));
        if (StringUtils.isEmpty(dataset.getCategoryName())) {
            dataset.setCategoryName("默认分类");
        }
        Map<String, Object> paramMap = new HashMap<String, Object>();
        paramMap.put("dataset_name", dataset.getDatasetName());
        paramMap.put("user_id", dataset.getUserId());
        paramMap.put("dataset_id", dataset.getDatasetId());
        paramMap.put("category_name", dataset.getCategoryName());
        if (datasetDao.countExistDatasetName(paramMap) <= 0) {
            datasetDao.update(dataset);
            return new ServiceStatus(ServiceStatus.Status.Success, "success");
        } else {
            return new ServiceStatus(ServiceStatus.Status.Fail, "Duplicated name");
        }
    }

    public ServiceStatus delete(Long userId, Long datasetId) {
        datasetDao.delete(userId, datasetId);
        return new ServiceStatus(ServiceStatus.Status.Success, "success");
    }

    public DashboardDataset getDateset(Long datasetId){
        DashboardDataset dataset = datasetDao.getDataset(datasetId);
        return dataset;
    }
}
