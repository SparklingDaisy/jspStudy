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
<div>
<label>인기검색어</label>
<c:forEach var="keyword" items="${keywords }">
${keyword }&nbsp;&nbsp;
</c:forEach>
</div>
<form name="animeFind" action="animeB.do">
<fieldset>
	<legend>애니메이션 검색</legend>
	<select name="cate">
		<c:forEach var="c" items="${category }">
			<option value="${c }">${c }</option>
		</c:forEach>
	</select>
	<input type="text" name="key">
	<input type="submit" value="검색">
</fieldset>
</form>
<hr>
<h1>AnimeA 페이지 입니다, 독립적인 컨텐츠.</h1>
</body>
</html>