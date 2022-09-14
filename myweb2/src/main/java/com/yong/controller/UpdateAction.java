package com.yong.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateAction implements CommandHandler {
	
	@Override
	public String Process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
				
		String result="커맨드 패턴을 새로추가된 업데이트 기능!";
		req.setAttribute("result", result);
		return "/update.jsp";
	}

}
