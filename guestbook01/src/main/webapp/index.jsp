<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.bitacademy.guestbook.dao.GuestbookDao" %>
<%@ page import="com.bitacademy.guestbook.vo.GuestbookVo" %>
<%
	List<GuestbookVo> list = new GuestbookDao().findAll();
	int count = list.size();
	int index = 0;
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/gb?a=add" method="post">
		<table border=1 width=500>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
				<td>비밀번호</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td colspan=4><textarea name="message" cols=60 rows=5></textarea></td>
			</tr>
			<tr>
				<td colspan=4 align=right><input type="submit" VALUE="확인 "></td>
			</tr>
		</table>
	</form>
	<br>
	<% for(GuestbookVo vo : list) { %>
	<table width=510 border=1>
		<tr>
			<td>[<%= count - index++ %>]</td>
			<td><%= vo.getName() %></td>
			<td><%= vo.getReg_date() %></td>
			<td><a href="/guestbook01/deleteform.jsp?no=<%= vo.getNo() %>">삭제</a></td>
		</tr>
		<tr>
			<td colspan=4>
				<%= vo.getMessage().replaceAll("\r\n", "<br/>") %>
			</td>
		</tr>
	</table>
	<br>
	<% } %>
</body>
</html>