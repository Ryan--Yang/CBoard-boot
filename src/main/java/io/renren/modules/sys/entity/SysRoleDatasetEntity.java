package io.renren.modules.sys.entity;


import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import java.io.Serializable;

/**
 * @Author: zhangjianping
 * @Date: 2018-11-14
 * @Param:
 * @Return: 
 * @Description: 角色与数据集对应关系
 */
@TableName("sys_role_dataset")
public class SysRoleDatasetEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	@TableId
	private Long id;

	/**
	 * 角色ID
	 */
	private Long roleId;

	/**
	 * 数据集ID
	 */
	private Long datasetId;

	/**
	 * 设置：
	 * @param id 
	 */
	public void setId(Long id) {
		this.id = id;
	}

	/**
	 * 获取：
	 * @return Long
	 */
	public Long getId() {
		return id;
	}
	
	/**
	 * 设置：角色ID
	 * @param roleId 角色ID
	 */
	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}

	/**
	 * 获取：角色ID
	 * @return Long
	 */
	public Long getRoleId() {
		return roleId;
	}
	
	/**
	 * 设置：菜单ID
	 * @param datasetId 菜单ID
	 */
	public void setDatasetId(Long datasetId) {
		this.datasetId = datasetId;
	}

	/**
	 * 获取：菜单ID
	 * @return Long
	 */
	public Long getDatasetId() {
		return datasetId;
	}
	
}
