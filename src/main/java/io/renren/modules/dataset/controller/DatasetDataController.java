package io.renren.modules.dataset.controller;

import io.renren.modules.dataset.service.DatasetDataService;
import org.cboard.services.DataProviderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

/**
 * @Author: zhangjianping
 * @Date: 2018-11-5
 * @Description:
 */
@RestController
@RequestMapping("/dataset")
public class DatasetDataController {

    @Autowired
    private DatasetDataService datasetDataService;

    @RequestMapping(value = "/getDatasetData")
    public List<Map<String,String>> getDatasetData(@RequestParam(name = "datasetId", required = true) Long datasetId,
                                                   @RequestParam(name = "datasourceId", required = false) Long datasourceId,
                                                   @RequestParam(name = "query", required = false) String query,
                                                   @RequestParam(name = "userId", required = false) Long userId,
                                                   @RequestParam(name = "page", required = false) Integer page,
                                                   @RequestParam(name = "limit", required = false) Integer limit){
        return datasetDataService.getDatasetData(null, null, datasetId, userId, page, limit);
    }
}
