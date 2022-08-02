<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>paramTestB.jsp</h1>
<%
String name=request.getParameter("name");
String age=request.getParameter("age");
%>
<form name="paramTestB" action="paramTestC.jsp">
<input type="hidden" name="name" value="<%=name%>">
<input type="hidden" name="age" value="<%=age %>">
<ul>
	<li>전화번호:<input type="text" name="tel"></li>
	<li>주소:<input type="text" name="addr"></li>
</ul>
<input type="submit" value="전달하기">
</form>
</body>
</html>