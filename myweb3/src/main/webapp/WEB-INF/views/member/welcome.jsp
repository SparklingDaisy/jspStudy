<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fieldset>
	<legend>회원가입 축하!</legend>
	<h1>회원 가입을 축하합니다!</h1>
	<h3>가입하신 ID : ${dto.id}</h3>
	<h3>가입하신 이름 : ${dto.name}</h3>
	
	<a href="index.do">홈으로</a>
</fieldset>
</body>
</html>