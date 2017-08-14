package org.rmyh.controller;

import javax.servlet.http.HttpServletRequest;

import org.rmyh.model.UserDetail;
import org.rmyh.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping("/login")
@Controller
public class LoginController {
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login() {
		return "login";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String doLogin(HttpServletRequest request) {
		String username = request.getParameter("username");  
        String password = request.getParameter("password");  
        String deptSerialNum=request.getParameter("deptSerialNum");
        UserDetail currentUser=loginService.checkLogin(username, password, deptSerialNum);
		return "index";
	}

}
