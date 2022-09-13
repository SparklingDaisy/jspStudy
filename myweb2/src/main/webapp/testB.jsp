<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>testB.jsp</h1>
<%
request.setAttribute("id", "hong");
request.setAttribute("addr", "서울");
//response.sendRedirect("testC.jsp"); 리다이렉트 방식
%>
<jsp:forward page="testC.jsp"></jsp:forward>
</body>
</html>