package com.bitacademy.guestbook.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitacademy.guestbook.dao.GuestbookDao;
import com.bitacademy.guestbook.vo.GuestbookVo;
import com.bitacademy.web.mvc.WebUtil;


public class GuestbookController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String actionName = request.getParameter("a");
		
		if("add".equals(actionName)) {

			String name = request.getParameter("name");
			String password = request.getParameter("password");
			String message = request.getParameter("message");
			
			GuestbookVo vo = new GuestbookVo();
			vo.setName(name);
			vo.setPassword(password);
			vo.setMessage(message);
			
			new GuestbookDao().insert(vo);
			
			WebUtil.redirect(request, response, request.getContextPath() + "/gb");
			
		} else if("delete".equals(actionName)) {

			Long no = Long.valueOf(request.getParameter("no"));
			String password = request.getParameter("password");
			
			GuestbookVo vo = new GuestbookVo();
			
			vo.setNo(no);
			vo.setPassword(password);
			
			new GuestbookDao().delete(vo);
			
			WebUtil.redirect(request, response, request.getContextPath() + "/gb");
			
		} else if("deleteform".equals(actionName)) {
			WebUtil.forward(request, response, "/WEB-INF/views/deleteform.jsp");
		} else {
			List<GuestbookVo> list = new GuestbookDao().findAll();
			request.setAttribute("list", list);		
			WebUtil.forward(request, response, "/WEB-INF/views/index.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
