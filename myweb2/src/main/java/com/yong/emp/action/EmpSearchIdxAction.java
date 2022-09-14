package com.yong.emp.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yong.controller.CommandHandler;
import com.yong.emp.model.EmpDAO;
import com.yong.emp.model.EmpDTO;

public class EmpSearchIdxAction implements CommandHandler {

	@Override
	public String Process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String useridx=req.getParameter("idx");
		int idx = Integer.parseInt(useridx);
		EmpDAO dao=new EmpDAO();
		
		ArrayList<EmpDTO> arr=dao.empSearchIdx(idx);
		req.setAttribute("arr", arr);
		return "/emp/empUpdate.jsp";
	}

}
