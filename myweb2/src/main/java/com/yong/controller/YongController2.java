package com.yong.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import java.io.*;


public class YongController2 extends HttpServlet{
	
	private String filename;
	private Map<String,CommandHandler> cmd;
	
	public YongController2() {
		filename="yongCommand.properties";
		cmd=new HashMap<String, CommandHandler>();
	}
	
	@Override
	public void init() throws ServletException {
		String path=this.getServletContext().getRealPath("WEB-INF/"+filename); //Context : 전반적인 정보를 의미
		//System.out.println("path="+path);
		Properties prop=new Properties();
		try {
			FileInputStream fis=new FileInputStream(path); //1번
			prop.load(fis); //2번
			fis.close();
		}catch(FileNotFoundException e) {
			e.printStackTrace();
		}catch(IOException e) {
			e.printStackTrace();
		}
		
		//3.실제 객체
		Iterator keys= prop.keySet().iterator();
		while(keys.hasNext()) {
			String key=(String)keys.next();
			//System.out.println(key);
			String value=prop.getProperty(key);
			 
			try {
				Class originClass = Class.forName(value); //내가 지정한 문자열의 경로를 실제 클래스 경로로 지정
				Object obj=originClass.newInstance(); //객체를 만들어주는 기능
				cmd.put(key, (CommandHandler)obj);
			}catch(ClassNotFoundException e){	
				e.printStackTrace();
			}catch(InstantiationException e) {
				e.printStackTrace();
			}catch (IllegalFormatConversionException e) {
				e.printStackTrace();
			}
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		userProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		userProcess(req, resp);
	}
	
	protected void userProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//1.요청받기
		//Object obj=e.getSource();
		String type=req.getParameter("type");
		
		//2.요구분석
		//String result=null; //기능수행 결과를 저장하기 위해 만듬
		//String gopage=null;
		CommandHandler cmd=null; //예전 Animal과 같음
		
		//3.기능수행
		if(type.equals("list")) {
			
			cmd=new ListAction();
			
		}else if(type.equals("write")) {

			cmd=new WriteAction();
			
		}else if(type.equals("content")) {
		
			cmd=new ContentAction();
			
		}
		
		String gopage=cmd.Process(req, resp);
		//4.결과저장
		//req.setAttribute("result", result);
		// 액션으로 기능이 이전됐기 때문에 사용하지 않아도됨
	
		//5.전가
		RequestDispatcher disp=req.getRequestDispatcher(gopage);
		disp.forward(req, resp);
	}
}

