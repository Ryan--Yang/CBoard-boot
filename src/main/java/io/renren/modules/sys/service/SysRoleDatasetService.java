package io.renren.modules.sys.service;

import com.baomidou.mybatisplus.extension.service.IService;
import io.renren.modules.sys.entity.SysRoleDatasetEntity;

import java.util.List;


/**
 * @Author: zhangjianping
 * @Date: 2018-11-14
 * @Param: 
 * @Return: 
 * @Description: 角色与数据集对应关系
 */
public interface SysRoleDatasetService extends IService<SysRoleDatasetEntity> {
	
	void saveOrUpdate(Long roleId, List<Long> datasetIdList);
	
	/**
	 * 根据角色ID，获取数据集ID列表
	 */
	List<Long> queryDatasetIdList(Long roleId);

	/**
	 * 根据角色ID数组，批量删除
	 */
	int deleteBatch(Long[] roleIds);
	
}
