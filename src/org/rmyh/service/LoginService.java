package org.rmyh.service;

import java.util.List;

import org.rmyh.dao.LoginDao;
import org.rmyh.model.Department;
import org.rmyh.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {
	
	@Autowired
	private LoginDao loginDao;
	
	public User checkLogin(String username,String password,String deptSerialNum){
		return loginDao.checkLogin(username,password,deptSerialNum);
	}
	
	public List<Department> loadZtreeDept(){
		return loginDao.loadZtreeDept();
	}

}
