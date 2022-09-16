<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table{
		margin:auto;
		background-color: #423b5b;
		color:white;
		font-size:30px;
	}
	td{
		border:1px solid white;
	}
</style>
</head>
<body>
	<table>
		<c:forEach var="fir" begin="2" end="9" step="1">
		<tr><c:forEach var="sec" begin="1" end="9" step="1">
			<td>${fir}x${sec}=${fir*sec}</td>
			</c:forEach></tr>
		</c:forEach>
	</table>
</body>


</html>