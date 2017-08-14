package org.rmyh.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class UserDetail extends User implements Serializable{
	
	private String deptName;
	private List<Integer> rolesId;
	private List<String> rolesName;
	private List<Integer> accessesId;
	private List<String> accessesName;
	
	
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
