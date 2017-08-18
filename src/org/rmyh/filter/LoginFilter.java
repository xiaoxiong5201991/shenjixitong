package org.rmyh.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.rmyh.model.User;

public class LoginFilter implements Filter{

	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;
		HttpSession session = request.getSession();
		User userDetail = (User) session.getAttribute("userDetail");
		if (userDetail != null) {
			chain.doFilter(request, response);
		} else {
			System.out.println("test");
			request.getRequestDispatcher("/login/login").forward(request, response);
		}
		
	}

	@Override
	public void init(FilterConfig config) throws ServletException {
		
	}
	
	

}
