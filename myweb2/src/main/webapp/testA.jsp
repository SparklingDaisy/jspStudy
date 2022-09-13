<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>testA.jsp</h1>
	<form name="testA" action="testB.jsp">
		<ul>
			<li>이름:<input type="text" name="name"></li>
			<li>전화번호:<input type="text" name="tel"></li>
		</ul>
			<input type="submit" value="전달">
</form>
</body>
</html>