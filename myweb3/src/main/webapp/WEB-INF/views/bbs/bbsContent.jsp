<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>본문보기</h1>
<table border="1" width="550" cellspacing="0">
	<tr>
		<th>번호</th>
		<td>${dto.idx }</td>
		<th>작성날짜</th>
		<td>${dto.writedate }</td>		
	</tr>
	<tr>
		<th>작성자</th>
		<td>${dto.writer }</td>
		<th>조회수</th>
		<td>${dto.readnum }</td>
	</tr>
	<tr>
		<th>제먹</th>
		<td colspan="3">${dto.subject }</tr>
	</tr>
	<tr height="250">
		<td colspan="4" align="left" valign="top">${dto.content }</td>
	</tr>
		<td colspan="4" align="center">목록</td>
	</tr>
	
	
</table>
</body>
</html>