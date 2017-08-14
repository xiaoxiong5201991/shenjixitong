package org.rmyh.service;

import org.rmyh.dao.LoginDao;
import org.rmyh.model.UserDetail;
import org.springframework.beans.factory.annotation.Autowired;

public class LoginService {
	
	@Autowired
	private LoginDao loginDao;
	
	public UserDetail checkLogin(String username,String password,String deptSerialNum){
		return loginDao.checkLogin(username,password,deptSerialNum);
	}

}
