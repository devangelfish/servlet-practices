package com.bitacademy.helloweb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// POST방식으로 넘어오는 데이터의 인코딩
		request.setCharacterEncoding("utf-8");	
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String birthday = request.getParameter("birthday");
		String gender = request.getParameter("gender");
		String[] hobbies = request.getParameterValues("hobby");
		String desc = request.getParameter("desc");
		
		System.out.println(email);
		System.out.println(password);
		System.out.println(birthday);
		System.out.println(gender);
		
		for(String hobby : hobbies) {
			System.out.println(hobby);
		}
		
		System.out.println(desc);
		
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().println("오케이");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		System.out.println("doPost() called");
	}

}
