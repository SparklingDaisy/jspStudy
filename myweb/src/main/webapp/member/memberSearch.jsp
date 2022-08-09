<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.yong.member.*" %>
<jsp:useBean id="mdao" class="com.yong.member.MemberDAO"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/mainLayout.css">
</head>
<style>
h2{
	text-align:center;
}

table{
	margin:0px auto;
}
</style>
<body>
	<%@include file="../header.jsp" %>
	<section>
		<article>
			<h2>회원 검색</h2>
			<form name="memberSearch" action="memberSearch_ok.jsp">
				<table class="firstTable">
					<tr>	
						<td><select name="userInfo">
							<option value="id">아이디</option>
							<option value="name">이름</option>
							<option value="email">E-mail</option>
							</select></td>
						<td><input type="text" name="search"></td>
						<td><input type="submit" value="검색하기"></td>
					</tr>
				</table>
			</form>
			<hr>
		</article>
	</section>
	<%@include file="../footer.jsp" %>
</body>
</html>