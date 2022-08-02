package com.yong.servlet;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;

import javax.servlet.http.HttpServlet;

public class GuestCountServlet extends HttpServlet{

	private int count;
	private String filename;
	
	public GuestCountServlet() {
		count=0;
		filename="c/aaa/count.txt";
		
	}
	
	public void init() throws ServletException{
		
		try {
			BufferedReader br=
			new BufferedReader(new FileReader(filename));
			String countStr=br.readLine();
			count=Integer.parseInt(countStr);
		} catch (FileNotFoundException e)				  {	
			e.printStackTrace();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
