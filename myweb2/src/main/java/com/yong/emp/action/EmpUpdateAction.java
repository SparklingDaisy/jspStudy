package com.yong.emp.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yong.controller.CommandHandler;
import com.yong.emp.model.EmpDAO;
import com.yong.emp.model.EmpDTO;

public class EmpUpdateAction implements CommandHandler {

	@Override
	public String Process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int idx=Integer.parseInt(req.getParameter("idx"));
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String dept=req.getParameter("dept");
		
		EmpDTO dto=new EmpDTO(idx, name, email, dept);
		EmpDAO dao=new EmpDAO();
		int result=dao.empUpdate(dto); //기능호출
		
		String msg=result>0?"사원정보 수정성공!(mvc)":"사원정보 수정실패(mvc)";
		req.setAttribute("msg", msg);
		
		return "/emp/empMsg.jsp";
	}

}
