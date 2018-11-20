package org.cboard.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.cboard.pojo.DashboardBoard;
import org.cboard.pojo.DashboardBoardParam;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * Created by yfyuan on 2016/8/23.
 */
@Mapper
@Repository
public interface CBoardDao {

    int save(DashboardBoard board);

    List<DashboardBoard> getBoardList(Long userId);

    List<DashboardBoard> getBoardListAdmin(Long userId);

    long countExistBoardName(Map<String, Object> map);

    int update(DashboardBoard board);

    int delete(Long boardId, Long userId);

    DashboardBoard getBoard(Long boardId);

    long checkBoardRole(Long userId, Long boardId, String permissionPattern);

    DashboardBoardParam getBoardParam(Long boardId, Long userId);

    int saveBoardParam(DashboardBoardParam boardParam);

    int deleteBoardParam(Long boardId, Long userId);
}
