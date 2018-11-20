package org.cboard.dao;

import org.apache.ibatis.annotations.Mapper;
import org.cboard.pojo.DashboardWidget;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * Created by yfyuan on 2016/8/122.
 */
@Mapper
@Repository
public interface WidgetDao {

    List<String> getCategoryList();

    List<DashboardWidget> getAllWidgetList();

    List<DashboardWidget> getWidgetList(Long userId);

    List<DashboardWidget> getWidgetListAdmin(Long userId);

    int save(DashboardWidget dashboardWidget);

    long countExistWidgetName(Map<String, Object> map);

    int update(DashboardWidget dashboardWidget);

    int delete(Long widgetId, Long userId);

    DashboardWidget getWidget(Long widgetId);

    long checkWidgetRole(Long userId, Long widgetId);
}
