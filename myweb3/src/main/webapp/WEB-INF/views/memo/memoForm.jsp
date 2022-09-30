<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>메모 작성</h1>
<form name="memoForm" action="memoWrite.do" method="post">

<ul>
	<li><label>번호</label><input type="text" name="idx"></li>
	<li><label>작성자</label><input type="text" name="writer"></li>
	<li>내용<textarea rows="5" cols="45" name="content"></textarea></li>
</ul>

<div>
<input type="submit" value="메모쓰기">
</div>

</form>
</body>
</html>