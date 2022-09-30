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
<h1>사원 검색 결과</h1>
<table border="1" cellspacing="0" width="550">
	<thead>
		<tr>
			<th>사원번호</th>
			<th>사원이름</th>
			<th>E-mail</th>
			<th>부서명</th>
		</tr>
	</thead>
	<tbody>
		<c:if test="${empty Search  }">
			<tr>
				<td colspan="4" align="center">
				검색된 사원이 없습니다.
				</td>
			</tr>
		</c:if>
		<c:forEach var="dto" items="${Search }">
			<tr>
				<td>${dto.idx }</td>
				<td>${dto.name }</td>
				<td>${dto.email }</td>
				<td>${dto.dept }</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>