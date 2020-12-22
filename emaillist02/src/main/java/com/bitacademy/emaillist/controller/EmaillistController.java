package com.bitacademy.emaillist.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitacademy.emaillist.dao.EmaillistDao;
import com.bitacademy.emaillist.vo.EmaillistVo;

public class EmaillistController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String actionName = request.getParameter("a"); // URL 매핑을 하는 방법도 있음, web.xml에 추가해서. /뒤에 parsing
		
		if("list".equals(actionName)) {
			
		} else if("add".equals(actionName)) {
			
		} else {
			List<EmaillistVo> list = new EmaillistDao().findAll();
			
			request.setAttribute("list", list);
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/veiws/index.jsp");
			rd.forward(request, response);
		}
		
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter pw = response.getWriter();
		pw.println("<h1>Emaillist!</h1>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
