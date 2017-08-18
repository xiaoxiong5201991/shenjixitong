package org.rmyh.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class UserDetail implements Serializable{
	
	private String deptName;
	private List<Integer> rolesId;
	private List<String> rolesName;
	private List<Integer> accessesId;
	private List<String> accessesName;
	private  Integer id;
	private String username;
	private String password;
	private String deptSerialNum;
	private Integer status;
	private Date createDate;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDeptSerialNum() {
		return deptSerialNum;
	}
	public void setDeptSerialNum(String deptSerialNum) {
		this.deptSerialNum = deptSerialNum;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	
	
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	public List<Integer> getRolesId() {
		return rolesId;
	}
	public void setRolesId(List<Integer> rolesId) {
		this.rolesId = rolesId;
	}
	public List<String> getRolesName() {
		return rolesName;
	}
	public void setRolesName(List<String> rolesName) {
		this.rolesName = rolesName;
	}
	public List<Integer> getAccessesId() {
		return accessesId;
	}
	public void setAccessesId(List<Integer> accessesId) {
		this.accessesId = accessesId;
	}
	public List<String> getAccessesName() {
		return accessesName;
	}
	public void setAccessesName(List<String> accessesName) {
		this.accessesName = accessesName;
	}
	
	

}
