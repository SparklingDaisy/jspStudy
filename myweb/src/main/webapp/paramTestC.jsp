<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>paramTestC.jsp</h1>
<%
String name=request.getParameter("name");
String age=request.getParameter("age");
String tel=request.getParameter("tel");
String addr=request.getParameter("addr");
%>
<h2>이름:<%=name %></h2>
<h2>나이:<%=age %></h2>
<h2>전화번호:<%=tel %></h2>
<h2>주소:<%=addr %></h2>
</body>
</html>