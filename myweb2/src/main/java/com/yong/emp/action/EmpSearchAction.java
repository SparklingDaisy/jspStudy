package com.yong.emp.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yong.controller.CommandHandler;
import com.yong.emp.model.EmpDAO;
import com.yong.emp.model.EmpDTO;

public class EmpSearchAction implements CommandHandler {

	@Override
	public String Process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		EmpDAO dao=new EmpDAO();
		
		ArrayList<EmpDTO> arr=dao.empSearch(name);
		req.setAttribute("arr", arr);
		return "/emp/empSearch.jsp";
	}

}

