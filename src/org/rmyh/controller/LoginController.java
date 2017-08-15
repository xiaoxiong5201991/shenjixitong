package org.rmyh.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.rmyh.model.Department;
import org.rmyh.model.UserDetail;
import org.rmyh.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

@RequestMapping("/login")
@Controller
public class LoginController {
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public ModelAndView login() {
//		List<Department> departments=loginService.loadZtreeDept();
//		Gson gson=new Gson();
//		String jsonString=gson.toJson(departments);
//		System.out.println(jsonString);
		ModelAndView mv=new ModelAndView("login");
		//mv.addObject("ztreeJson", jsonString);
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="/loadZtree",method=RequestMethod.POST)
	public String loadZtree() {
		List<Department> departments=loginService.loadZtreeDept();
		Gson gson=new Gson();
		String jsonString=gson.toJson(departments);
		System.out.println(jsonString);
		return "{\"result\":"+jsonString+"}";
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
