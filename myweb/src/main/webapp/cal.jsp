<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/mainLayout.css">
<style>

form{
	text-align:center;
}

h1{
	text-align:center;
}
</style>

</head>

<body>
	<%@include file="header.jsp" %>
	<section>
		<article>
			<h1>사칙계산기</h1>
			<form name="fm" action="cal_ok.jsp">
			<fieldset>
				<legend>사칙계산기</legend>
				<input type="text" name="num1">
				&nbsp;&nbsp;&nbsp;&nbsp;
				<select name="oper">
					<option value="+">+</option>
					<option value="-">-</option>
					<option value="*">*</option>
					<option value="/">/</option>
				</select>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="text" name="num2">
				&nbsp;&nbsp;&nbsp;&nbsp;
				=
				&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="submit" value="계산하기">
			</fieldset>
			</form>
		</article>
	</section>
	<%@include file="footer.jsp" %>
</body>
</html>