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
<h4>jstlTest4.jsp</h4>
<h3>bbsContent.yong?idx=3&cp=4</h3>
<c:url var="contentUrl" value="bbsContent.yong">
	<c:param name="idx">3</c:param>
	<c:param name="cp">4</c:param>
</c:url>
<h3>${contentUrl }</h3>

<c:import url="https://m.naver.com" var="naver"></c:import>
<!-- 정보 보안법 등의 이유로 이제는 사용하지 않는게 임폴트 이다. -->

<div style="border:1px solid gray; width:400px; height:400px; overflow:hidden;">
${naver }
</div>
</body>
</html>