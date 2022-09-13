package com.yong.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class YongController_origin extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		userProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		userProcess(req, resp);
	}
	
	protected void userProcess(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {

		//1.요청받기
		//Object obj=e.getSource(); 와 같은 기능
		String type=req.getParameter("type");
		
		//2.요구분석
		String result=null; //기능수행 결과를 저장하기 위해 만듬
		String gopage=null;
		
		if(type.equals("list")) {
			
		//3.기능수행
			result="이것은 목록보기 기능의 수행 결과";	//해당 문자열을 기능수행 총 결과물이라고 가정
			gopage="/list.jsp";	

		}else if(type.equals("write")) {
			result="이것은 글쓰기 기능의 수행 결과";
			gopage="/write.jsp";	

			
		}else if(type.equals("content")) {
			result="이것은 본문보기 기능의 수행 결과";
			gopage="/content.jsp";	
			
		}
		
		//4.결과저장
		req.setAttribute("result", result);
		
		//5.전가
		RequestDispatcher disp=req.getRequestDispatcher(gopage);
		disp.forward(req, resp);
	}
}
