<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.bitacademy.guestbook.dao.GuestbookDao" %>
<%@ page import="com.bitacademy.guestbook.vo.GuestbookVo" %>
<%
	request.setCharacterEncoding("utf-8");

	Long no = Long.valueOf(request.getParameter("no"));
	String password = request.getParameter("password");
	
	GuestbookVo vo = new GuestbookVo();
	
	vo.setNo(no);
	vo.setPassword(password);
	
	boolean result = new GuestbookDao().delete(vo);
	
	response.sendRedirect("/guestbook01");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
</body>
</html>