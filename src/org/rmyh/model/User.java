package org.rmyh.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class User implements Serializable{
	
	protected Integer id;
	protected String username;
	protected String password;
	protected String deptSerialNum;
	protected Integer status;
	protected Date createDate;
	
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
	
	 


}
