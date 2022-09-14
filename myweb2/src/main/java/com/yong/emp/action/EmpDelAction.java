package com.yong.emp.action;

import java.io.IOException;

import com.yong.emp.model.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yong.controller.CommandHandler;

public class EmpDelAction implements CommandHandler {
	
	@Override
	public String Process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");

		EmpDAO dao=new EmpDAO();
		int result=dao.empDel(name); //기능호출
		
		String msg=result>0?"사원삭제성공!(mvc)":"사원삭제실패(mvc)";
		req.setAttribute("msg", msg);
		
		return "/emp/empMsg.jsp";
	}

}


