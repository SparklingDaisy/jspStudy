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

<c:if test="${empty idxList }">
	<tr>
		<td colspan="4" align="center">
		검색된 사원이 없습니다.
		</td>
	</tr>
</c:if>

<section>
	<article>
	<c:forEach var="idx" items="${idxList }">
	<h2>${idx.idx}사번 사원정보</h2>
		<form name="empUpdate" action="empUpdate.do">
			<fieldset>
				<legend>사원정보</legend>
					<table>
						<tr>
							<th>사원번호:</th>
							<td>${idx.idx}번</td>
							<input type="hidden" name="idx" value="${idx.idx }">
						</tr>
						<tr>
							<th>사원이름:</th>
							<td><input type="text" name="name" value="${idx.name}"></td>
						</tr>
						<tr>
							<th>E-mail:</th>
							<td><input type="text" name="email" value="${idx.email}"></td>
						</tr>
						<tr>
							<th>부서명:</th>
							<td><input type="text" name="dept" value="${idx.dept}"></td>
						</tr>
						<tr>
							<td colspan="2" align="center">
							<input type="submit" value="정보수정">
							<input type="button" value="돌아가기" onclick="window.location.href='emp.jsp';" >
							</td>				
						</tr>
					</table>

			</fieldset>
		</form>
	</c:forEach>
	</article>
</section>