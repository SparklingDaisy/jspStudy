package com.yong.controller;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Iterator;
import java.util.Properties;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

public class control extends HttpServlet {
	
	private String filename;
	private Map<String,CommandHandler> cmd;
	
	public control() {
		filename="yongCommand.properties"; 
		cmd=new HashMap<String, CommandHandler>();
	}
	
	@Override
	public void init() throws ServletException {
		String path=this.getServletContext().getRealPath("WEB-INF/"+filename);
		Properties prop=new Properties();
		
		try {
			FileInputStreamn fis =new FileInputStream(path); //1번 파일 불러오기, 파일의 내용을 byte 단위로 읽어 오는 클래스
			prop.load(fis); //2번 키와 밸류를 추출하여 입혀주는 역할
			/*Properties 파일은 java.util 에서 제공하는 Properties 객체를 활용하여 파일을 FileInputStream으로 읽고
			load 매소드를 활용하여 해당 파일을 읽어드립니다.  
			*/
			fis.close();
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		//3.실제 객체
		Iterator key = prop.keySet().iterator();
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

}
