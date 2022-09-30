<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="login" action="login.do">
<fieldset>
	<legend>LOGIN</legend>
	<ul>
		<li><label>ID</label><input type="text" name="userid"
		value="${cookie.saveid.value }"></li>
		<li><label>Password</label><input type="password" name="userpwd"></li>
	</ul>
	<div style="text-align:right">
		<input type="checkbox" name="saveid" value="on" ${empty cookie.saveid.value?'':'checked'}>ID기억하기
		<input type="submit" value="login">
	</div>
</fieldset>
</form>
</body>
</html>