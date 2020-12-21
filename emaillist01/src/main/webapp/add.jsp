<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.bitacademy.emaillist.vo.EmaillistVo" %>
<%@ page import="com.bitacademy.emaillist.dao.EmaillistDao" %>
<%
	request.setCharacterEncoding("utf-8");

	String firstName = request.getParameter("firstName");
	String lastName = request.getParameter("lastName");
	String email = request.getParameter("email");
	
	EmaillistVo vo = new EmaillistVo();
	vo.setFirstName(firstName);
	vo.setLastName(lastName);
	new EmaillistDao().insert(vo);

	response.sendRedirect("/emaillist01/index.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>등록 성공</h1>
</body>
</html>