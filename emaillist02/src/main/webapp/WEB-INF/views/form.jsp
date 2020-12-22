<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Email List</title>
</head>
<body>
	<h1>메일 리스트 가입</h1>
	<p>
		메일 리스트에 가입하려면,<br/>
		아래 항목을 기입하고 submit 버튼을 클릭하세요.
	</p>
	<form action="<%=request.getContextPath() %>/el" method="post">
		<input type='hidden' name='a' value='add'>
	    First name: <input type="text" name="firstName">
	    <br/><br/>
	    
	    Last name: <input type="text" name="lastName">
	    <br/><br/>
	    
	    Email address: <input type="text" name="email">
	    <br/><br/>
	    
	    <input type="submit" name='등록' value="submit">
	</form>
	<br>
	<p>
		<a href='<%= request.getContextPath() %>/el'>리스트 바로가기</a>
	</p>
</body>
</html>