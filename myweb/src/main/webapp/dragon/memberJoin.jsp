<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/mainLayout.css">
<script>
function openCheck(){
	window.open('idCheck.jsp','idCheck','width=600,height=200');
}
</script>
</head>
<body>
<%@include file="header.jsp" %>
<section>
	<article>
		<h3 align="center">회원가입</h3>
		<form action="memberJoin_ok.jsp">
		<table align="center">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" id="mid" readonly><input type="button" value="중복검사" onclick="openCheck();"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pwd" required></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="tel"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="addr"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="가입">
					<input type="reset" value="다시 작성">
				</td>
			</tr>
		</table>
		</form>
	</article>
</section>
<%@include file="footer.jsp" %>
</body>
</html>