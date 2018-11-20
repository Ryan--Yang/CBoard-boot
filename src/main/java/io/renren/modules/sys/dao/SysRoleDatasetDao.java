package io.renren.modules.sys.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import io.renren.modules.sys.entity.SysRoleDatasetEntity;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Author: zhangjianping
 * @Date: 2018-11-14
 * @Param: 
 * @Return: 
 * @Description: 角色与数据集对应关系
 */
@Mapper
@Repository
public interface SysRoleDatasetDao extends BaseMapper<SysRoleDatasetEntity> {
	
	/**
	 * 根据角色ID，获取数据集ID列表
	 */
	List<Long> queryDatasetIdList(Long roleId);

	/**
	 * 根据角色ID数组，批量删除
	 */
	int deleteBatch(Long[] roleIds);
}
