package com.thms.bean;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.thms.common.Constants;
/**
 * ClassName: Unit 
 * @Description: 单位类
 * @author yuanzhong
 * @date 2015年6月20日  上午9:49:28
 */
@Entity
@Table(name="units")
public class Unit implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_")
	private Integer id;
	/** 名称 */
	@Column(name = "NAME_")
	private String name;
	/** 状态 */
	@Column(name = "STATUS_", length = 1)
	private Integer status = Constants.NEW;
	/** 删除标识 */
	@Column(name = "ISDELETE_", length = 1)
	private Integer isDelete = Constants.NEW;
	/** 创建时间 */
	@Column(name = "CREATEDTIME_")
	private Date createdTime;
	/** 更新时间 */
	@Column(name = "UPDATEDTIME_")
	private Date updatedTime;

	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Date getCreatedTime() {
		return createdTime;
	}
	public void setCreatedTime(Date createdTime) {
		this.createdTime = createdTime;
	}
	public Date getUpdatedTime() {
		return updatedTime;
	}
	public void setUpdatedTime(Date updatedTime) {
		this.updatedTime = updatedTime;
	}
	public Integer getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(Integer isDelete) {
		this.isDelete = isDelete;
	}

}
