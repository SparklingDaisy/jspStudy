<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>파일 업로드 테스트 폼</h1>
<form name="fileUpload1" action="fileUpload1.do" method="post" enctype="multipart/form-data">
<fieldset>
	<legend>@requestParam 파일업로드</legend>	
	<ul>
		<li>올린이:<input type="text" name="writer"></li>
		<li>업로드할 파일:<input type="file" name="upload"></li>
	</ul>	
	<div>
		<input type="submit" value="파일 올리기">
	</div>	
</fieldset>
</form>
<hr>
<form name="fileUpload2" action="fileUpload2.do" method="post" enctype="multipart/form-data">
<fieldset>
	<legend>multipartRequest 이용 파일업로드</legend>	
	<ul>
		<li>올린이:<input type="text" name="writer"></li>
		<li>업로드할 파일:<input type="file" name="upload"></li>
	</ul>	
	<div>
		<input type="submit" value="파일 올리기">
	</div>	
</fieldset>
</form>
<hr>
<form name="fileUpload3" action="fileUpload3.do" method="post" enctype="multipart/form-data">
<fieldset>
	<legend>DTO 이용 파일업로드</legend>	
	<ul>
		<li>올린이:<input type="text" name="writer"></li>
		<li>업로드할 파일:<input type="file" name="upload"></li>
	</ul>	
	<div>
		<input type="submit" value="파일 올리기">
	</div>	
</fieldset>
</form>
<hr>
<form name="fileUpload4" action="fileUpload4.do" method="post" enctype="multipart/form-data">
<fieldset>
	<legend>다중 파일업로드</legend>	
	<ul>
		<li>올린이:<input type="text" name="writer"></li>
		<li>업로드할 파일:<input type="file" name="upload"></li>
		<li>업로드할 파일:<input type="file" name="upload2"></li>
		<li>업로드할 파일:<input type="file" name="upload3"></li>
	</ul>	
	<div>
		<input type="submit" value="파일 올리기">
	</div>	
</fieldset>
</form>
</body>
</html>