<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="imgUpload" action="imgUpload.do" method="post" enctype="multipart/form-data">
<fieldset>
	<legend>이미지 올리기</legend>
	<label>이미지</label>
	<input type="file" name="img">
	<input type="submit" value="올리기">
</fieldset>
</form>
</body>
</html>