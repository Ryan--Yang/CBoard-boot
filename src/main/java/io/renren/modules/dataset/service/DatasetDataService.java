package io.renren.modules.dataset.service;

import java.util.List;
import java.util.Map;

public interface DatasetDataService {

    List<Map<String,String>> getDatasetData(Long datasourceId, Map<String, String> query, Long datasetId, Long userId, Integer page, Integer limit);
}
