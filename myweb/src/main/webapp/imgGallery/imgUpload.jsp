<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
String sid=(String)session.getAttribute("sid");
%>
<body>
<form name="imgUpload" action="imgUpload_ok.jsp" method="post" enctype="multipart/form-data">
<input type="hidden" name="id" value="<%=sid %>">
<fieldset>
	<legend>이미지올리기</legend>
	<label>이미지:</label>
	<input type="file" name="upload">
	<div><input type="submit" value="올리기"></div>
</fieldset>

</form>
</body>
</html>