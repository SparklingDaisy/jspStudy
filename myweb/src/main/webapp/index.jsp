<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/mainLayout.css">
</head>

<body>
	<%@include file="header.jsp" %>
	<section>
		<article id="mainImg">
			<img src="img/main.jpg" alt="메인이미지">
		</article>
		<article id="subMenu">
			<h2>아래에 메뉴가 추가됨</h2>
			<ul>
				<li>여기에 추가</li>
				<li><a href="formTest.jsp">폼 테스트</a></li>
				<li><a href="cal.jsp">사칙계산기</a></li>
				<li><a href="emp.jsp">사원관리프로그램(모델1기본형)</a></li>
				<li><a href="emp2.jsp">사원관리프로그램(모델1빈즈방식)</a></li>
			</ul>
		</article>
	</section>
	<%@include file="footer.jsp" %>
</body>
</html>
