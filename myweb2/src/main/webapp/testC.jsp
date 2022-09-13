<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>testC.jsp</h1>
<%
String name=request.getParameter("name");
String tel=request.getParameter("tel");
String id=(String)request.getAttribute("id");
String addr=(String)request.getAttribute("addr");
%>
<h3>이름:<%=name %></h3>
<h3>전화번호:<%=tel %></h3>
<h3>아이디:<%=id %></h3>
<h3>주소:<%=addr %></h3>
</body>
</html>