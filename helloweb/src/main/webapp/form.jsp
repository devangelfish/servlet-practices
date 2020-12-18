<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action='/helloweb/join' method='post'>
		이메일:<input type="text" name='email'/><br/>
		비밀번호:<input type="password" name='password'/><br/>
		생년:<select name='birthday'>
			<option>1996</option>
			<option>1997</option>
			<option>1998</option>
			<option>1999</option>
		</select><br/>
		
		성별:
		여<input type='radio' name='gender' value='female' checked='checked'>
		남<input type='radio' name='gender' value='male'>
		<br/>
		
		취미:
		코딩 <input type="checkbox" name='hobby' value='coding'/>
		수영 <input type="checkbox" name='hobby' value='swimming'/>
		낚시 <input type="checkbox" name='hobby' value='fishing'/>
		요리 <input type="checkbox" name='hobby' value='cooking'/>
		<br/>
		
		<textarea name='desc'></textarea>
		<br/>
		
		<input type='submit' value='가입'/>
	</form>
</body>
</html>