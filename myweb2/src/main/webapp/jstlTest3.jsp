<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jstlTest3.jsp</h1>

<%
	String fruit[]={"사과","배","포도","딸기"};
%>
<c:set var="fru" value="<%=fruit %>"></c:set>
<ul>
	<c:forEach var="temp" items="${fru }">
		<li>${temp}</li>
	</c:forEach>
</ul>
<hr>
<c:set var="sum" value="0"></c:set>
<c:forEach var="temp" begin="1" end="10" step="1">
${temp}&nbsp;&nbsp;
<c:set var="sum" value="${sum+temp}"/>
</c:forEach>
<hr>
<h3>1~10까지의 합:${sum }</h3>
<hr>
<c:forTokens var="temp" items="사과,배,포도,딸기" delims=",">
${temp }&nbsp;&nbsp;
</c:forTokens>
<hr>
<table border="1" cellspacing="0" width="650">
<c:forEach var="i" begin="1" end="9" step="1">
	<tr>
	<c:forEach var="j" begin="2" end="9" step="1">
		<td>${j} * ${i} = ${j*i}</td>
	</c:forEach>
	</tr>
</c:forEach>
</table>
</body>
</html>