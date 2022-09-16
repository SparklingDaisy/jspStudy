package com.yong.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import java.io.*;


public class YongController extends HttpServlet{
	
	private String filename;
	private Map<String,CommandHandler> cmd;
	
	public YongController() {
		filename="yongCommand.properties";
		cmd=new HashMap<String, CommandHandler>();
	}
	
	@Override
	public void init() throws ServletException {
		String path=this.getServletContext().getRealPath("WEB-INF/"+filename); 
		//Context : 전반적인 정보를 의미
		
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
			String value=prop.getProperty(key); // 지정된 키를 가지는 프로퍼티를, 프로퍼티 리스트로부터 찾습니다.
						 
			try {
				Class originClass = Class.forName(value); //내가 지정한 문자열의 경로를 실제 클래스 경로로 지정
				Object obj=originClass.newInstance(); //객체를 만들어주는 기능
				cmd.put(key, (CommandHandler)obj);
			}catch(ClassNotFoundException e){	
				e.printStackTrace();
			}catch(InstantiationException e) {
				e.printStackTrace();
			}catch (IllegalAccessException e) {
				e.printStackTrace();
			}
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		userProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		userProcess(req, resp);
	}
	
	protected void userProcess(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {

		//String type=req.getParameter("type");
		String type=req.getRequestURI();
		if(type.indexOf(req.getContextPath())==0) { //사용자의 프로젝트가 맞을 시
			type=type.substring(req.getContextPath().length()); //프로젝트 다음 이름부터 끝까지 짤라서 선언
		}
		
		CommandHandler cmd2=cmd.get(type); //예전 Animal과 같음

		String gopage=cmd2.Process(req, resp);
	
		//5.전가
		RequestDispatcher disp=req.getRequestDispatcher(gopage);
		disp.forward(req, resp);
		
		/* RequestDispatcher는 클라이언트로부터 최초에 들어온 요청을 JSP/Servlet 내에서 
		원하는 자원으로 요청을 넘기는(보내는) 역할을 수행하거나, 
		특정 자원에 처리를 요청하고 처리 결과를 얻어오는 기능을 수행하는 클래스 
		*/

	}
}

