<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%String str2="java"; 
String str=request.getParameter("str");
String temp=request.getParameter("temp");
%>
<h1 Style="color:red;">sub.jsp에서 출력한 문장 A</h1>
<h1 Style="color:red;">sub.jsp에서 출력한 str2의값:<%=str2 %></h1>
<h1 Style="color:red;">sub.jsp에서 출력한 문장 B</h1>
<h1 Style="color:green;">super로부터 가져온 str의 값:<%=str %></h1>
<h1 Style="color:green;">super로부터 가져온 temp의 값:<%=temp %></h1>
</html>