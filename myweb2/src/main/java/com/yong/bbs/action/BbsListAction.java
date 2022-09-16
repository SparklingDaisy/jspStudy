package com.yong.bbs.action;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yong.controller.CommandHandler;

public class BbsListAction implements CommandHandler {

	@Override
	public String Process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		return "/bbs/bbsList.jsp";
	}

}

