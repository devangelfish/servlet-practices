﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.bitacademy.emaillist.dao.EmaillistDao" %>
<%@ page import="com.bitacademy.emaillist.vo.EmaillistVo" %>

<%
	List<EmaillistVo> list = (List<EmaillistVo>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Email List</title>
</head>
<body>
	<h1>메일 리스트에 가입되었습니다.</h1>
	<p>입력한 정보 내역입니다.</p>
	<!-- 메일정보 리스트 -->
	<% for(EmaillistVo vo : list) { %>
	<table border="1">
		<tr>
			<td align=right>First name: </td>
			<td><%=vo.getFirstName() %></td>
		</tr>
		<tr>
			<td align=right width="110">Last name: </td>
			<td width="110"><%=vo.getLastName() %></td>
		</tr>
		<tr>
			<td align=right>Email address: </td>
			<td><%=vo.getEmail() %></td>
		</tr>	
	</table>
	<br>	
	<% } %>
	<p>
		<a href='<%=request.getContextPath() %>/el?a=list'>추가 이메일 등록</a>
	</p>
	<br>
</body>
</html>