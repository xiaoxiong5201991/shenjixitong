package org.rmyh.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.transform.Transformers;
import org.rmyh.controller.BaseDao;
import org.rmyh.model.Department;
import org.rmyh.model.User;
import org.springframework.stereotype.Repository;



@Repository
public class LoginDao extends BaseDao{
	
	public User checkLogin(String username,String password,String deptSerialNum){
		String sql="select * from user where username=? and password=? and deptSerialNum=?";
		SQLQuery query=getSession().createSQLQuery(sql).addEntity(User.class);
		query.setString(0, username);
		query.setString(1, password);
		query.setString(2, deptSerialNum);
		return (User)query.uniqueResult();
			
	}
	
	public List<Department> loadZtreeDept(){
		String sql="select * from department order by did asc";
		SQLQuery query=getSession().createSQLQuery(sql).addEntity(Department.class);
		List<Department> departments=query.list();
		return departments;
	}
}
