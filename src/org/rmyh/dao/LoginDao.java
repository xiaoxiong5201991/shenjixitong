package org.rmyh.dao;

import java.util.List;

import org.hibernate.SQLQuery;
import org.rmyh.controller.BaseDao;
import org.rmyh.model.Department;
import org.rmyh.model.UserDetail;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDao extends BaseDao{
	
	public UserDetail checkLogin(String username,String password,String deptSerialNum){
		
		return null;
	}
	
	public List<Department> loadZtreeDept(){
		
		String sql="select * from department";
		SQLQuery query=getSession().createSQLQuery(sql).addEntity(Department.class);
		List<Department> departments=query.list();
		return departments;
	}
}
