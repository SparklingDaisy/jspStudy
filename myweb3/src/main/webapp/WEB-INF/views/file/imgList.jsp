<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function openFileUpload(){
	window.open('uploadForm.do','upload','width=450,height=250');
}
</script>
<style>
img{
width:100px;
height:100px;
}
</style>
</head>
<body>
<h1>이미지 게시판</h1>

<table>
	<c:if test="${empty files }">
	<tr>
		<td colspan="5" align="center">
		등록된 이미지가 없습니다.</td>
	</tr>
	</c:if>
	<tr>
	<c:forEach var="f" items="${files }" varStatus="aa">
			<td><img src="/myweb3/imgbbs/${f.name}">${aa.count }</td>
			<c:if test="${aa.count mod 3 ==0}"></tr><tr></c:if>
	</c:forEach>
	</tr>
</table>
<div>
<input type="button" value="이미지 올리기" onclick="openFileUpload();">
</div>
</body>
</html>