package io.renren.modules.dataset.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.google.common.base.Functions;
import com.google.common.collect.Maps;
import io.renren.modules.dataset.service.DatasetDataService;
import org.cboard.dao.DatasetDao;
import org.cboard.dao.DatasourceDao;
import org.cboard.dataprovider.DataProvider;
import org.cboard.dataprovider.DataProviderManager;
import org.cboard.exception.CBoardException;
import org.cboard.pojo.DashboardDataset;
import org.cboard.pojo.DashboardDatasource;
import org.cboard.services.DataProviderService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author: zhangjianping
 * @Date: 2018-11-5
 * @Description:
 */
@Service
public class DatasetDataServiceImpl implements DatasetDataService {

    private final Logger LOG = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private DatasourceDao datasourceDao;

    @Autowired
    private DatasetDao datasetDao;


    private DataProvider getDataProvider(Long datasourceId, Map<String, String> query, Dataset dataset) throws Exception {
        if (dataset != null) {
            datasourceId = dataset.getDatasourceId();
            query = dataset.getQuery();
        }
        DashboardDatasource datasource = datasourceDao.getDatasource(datasourceId);
        JSONObject datasourceConfig = JSONObject.parseObject(datasource.getConfig());
        Map<String, String> dataSource = Maps.transformValues(datasourceConfig, Functions.toStringFunction());
        DataProvider dataProvider = DataProviderManager.getDataProvider(datasource.getSourceType(), dataSource, query);
        if (dataset != null && dataset.getInterval() != null && dataset.getInterval() > 0) {
            dataProvider.setInterval(dataset.getInterval());
        }
        return dataProvider;
    }

    @Override
    public List<Map<String,String>> getDatasetData(Long datasourceId, Map<String, String> query, Long datasetId, Long userId, Integer page, Integer limit){
        try {
            Dataset dataset = getDataset(datasetId);
            DataProvider dataProvider = getDataProvider(datasourceId, query, dataset);
            String data[][] =  dataProvider.getDatasetData(page, limit);

            Map<String, String> row = new HashMap<>();
            List<Map<String, String>> rows = new ArrayList<>();
            for(int i=1; i<data.length; i++){
                for(int j=0; j<data[i].length; j++){
                    row.put(data[0][j], data[i][j]);
                }
                rows.add(row);
            }
            return rows;
        } catch (Exception e) {
            e.printStackTrace();
            LOG.error("", e);
            throw new CBoardException(e.getMessage());
        }
    }

    protected Dataset getDataset(Long datasetId) {
        if (datasetId == null) {
            return null;
        }
        return new Dataset(datasetDao.getDataset(datasetId));
    }

    protected class Dataset {
        private Long datasourceId;
        private Map<String, String> query;
        private Long interval;
        private JSONObject schema;

        public Dataset(DashboardDataset dataset) {
            JSONObject data = JSONObject.parseObject(dataset.getDataJson());
            this.query = Maps.transformValues(data.getJSONObject("query"), Functions.toStringFunction());
            this.datasourceId = data.getLong("datasource");
            this.interval = data.getLong("interval");
            this.schema = data.getJSONObject("schema");
        }

        public JSONObject getSchema() {
            return schema;
        }

        public void setSchema(JSONObject schema) {
            this.schema = schema;
        }

        public Long getDatasourceId() {
            return datasourceId;
        }

        public void setDatasourceId(Long datasourceId) {
            this.datasourceId = datasourceId;
        }

        public Map<String, String> getQuery() {
            return query;
        }

        public void setQuery(Map<String, String> query) {
            this.query = query;
        }

        public Long getInterval() {
            return interval;
        }

        public void setInterval(Long interval) {
            this.interval = interval;
        }
    }
}
