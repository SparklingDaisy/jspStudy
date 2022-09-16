<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 코어태그 url과 접두어 c를 입력해주어야 c태그 사용가능 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jstlTest2.jsp</h1>
<form name="fm" action="jstlTest2.jsp"><!-- action을 안쓸경우 자신을 다시 호출하여 현 상황은 안써도 되긴함 -->
<fieldset>
	<legend>이름입력</legend>
	<label>이름:</label>
	<input type="text" name="name">
	<input type="submit" value="입력">
</fieldset>
</form>
<hr>
<c:if test="${empty param.name}">
	<h3 style="color:blue;">이름을 입력하지 않으셨습니다.</h3>
</c:if>
<c:if test="${param.name=='둘리'}">
<h3 style="color:green;">둘리는 천재!!</h3>
</c:if>
<h3>입력된 이름:${param.name}</h3>
<hr>
	<c:choose>
		<c:when test="${param.name=='킬러'}">
			<h3 style="color: red;">킬러는 입장이 불가능합니다.</h3>
		</c:when>
		<c:when test="${param.name=='홍길동'}">
			<h3 style="color: red;">서자는 입장이 불가능합니다.</h3>
		</c:when>
		<c:otherwise>
			<h3 style="color: blue;">입장을 환영합니다.</h3>
		</c:otherwise>
	</c:choose>
</body>
</html>