package com.yong.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;

public class SevletLifeCycle extends HttpServlet{
	
	public SevletLifeCycle() {
		System.out.println("1)생성자() 호출됨!!");
	}
	
	@Override
	public void init() throws ServletException {
		System.out.println("2)init() 메서드 호출됨!!");
	}

	@Override
	public void service(ServletRequest req, ServletResponse res) 
			throws ServletException, IOException {
		System.out.println("3)service 메서드 호출됨!!");
	}
	
	@Override
	public void destroy() {
		System.out.println("4)destroy() 메서드 호출됨!!");
	}
	
}
