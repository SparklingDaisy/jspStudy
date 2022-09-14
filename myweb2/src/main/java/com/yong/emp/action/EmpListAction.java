package com.yong.emp.action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yong.controller.CommandHandler;

import com.yong.emp.model.*;
import java.util.*;

public class EmpListAction implements CommandHandler {

	@Override
	public String Process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		EmpDAO dao=new EmpDAO();
		ArrayList<EmpDTO> arr=dao.empList();
		req.setAttribute("arr", arr);
		return "/emp/empList.jsp";
	}

}
