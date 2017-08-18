package org.rmyh.controller;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.rmyh.model.Department;
import org.rmyh.model.User;
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
		ModelAndView mv=new ModelAndView("login");
		return mv;
	}
	
	
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView mv=new ModelAndView("index");
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
	
	@ResponseBody
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public Map<String,Object> doLogin(HttpServletRequest request) {
		boolean result=false;
		String url=null;
		Map<String,Object> resultMap=new  LinkedHashMap<String, Object>();
		String username = request.getParameter("username");  
        String password = request.getParameter("password");  
        String deptSerialNum=request.getParameter("departNum");
        System.out.println(username+password+deptSerialNum);
        User currentUser=loginService.checkLogin(username, password, deptSerialNum);
        if(currentUser!=null){
        	result=true;
        	url = request.getContextPath()+"/login/index";
        	request.getSession().setAttribute("userDetail", currentUser);
        }
        resultMap.put("result", result);
    	resultMap.put("url",url);
    	return resultMap;
	}

/*	@RequestMapping(value="/login",method=RequestMethod.POST)
	public ModelAndView doLogin(HttpServletRequest request) {
		boolean result=false;
		String username = request.getParameter("username");  
        String password = request.getParameter("password");  
        String deptSerialNum=request.getParameter("departNum");
        System.out.println(username+password+deptSerialNum);
        User currentUser=loginService.checkLogin(username, password, deptSerialNum);
        if(currentUser!=null){
        	result=true;
        	request.getSession().setAttribute("userDetail", currentUser);
        }
		return "{\"result\":"+result+"}";
	}*/

}
