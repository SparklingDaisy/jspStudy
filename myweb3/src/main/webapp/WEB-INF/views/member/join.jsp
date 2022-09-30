<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function openIdCheck(){
		window.open('idCheckForm.do','idCheck','width=400,height=300');
	}
</script>
</head>
<body>
<h1>MVC SPRING 회원가입</h1>
<form name="memberJoin" action="memberJoin.do" method="post">
<fieldset>
	<legend>회원가입</legend>
	<ul>
		<li><label>ID</label>
			<input type="text" name="id">
			<input type="button" value="중복검사" onclick="openIdCheck()">
		</li>
		<li><label>Password</label>
			<input type="password" name="pwd">
		</li>
		<li><label>name</label>
			<input type="text" name="name">
		</li>
		<li><label>E-mail</label>
			<input type="text" name="email">
		</li>
		<li><label>Telephone</label>
			<input type="text" name="tel">
		</li>
		<li><label>Address</label>
			<input type="text" name="addr">
		</li>		
	</ul>
	<div>
	<input type="submit" value="회원가입">
	</div>
</fieldset>
</form>
</body>
</html>