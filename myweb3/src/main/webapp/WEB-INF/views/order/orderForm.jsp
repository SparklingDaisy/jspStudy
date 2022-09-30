<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>편의점 발주 프로그램</h1>
<form name="order" action="productOrder.do" method="post">

<fieldset>
	<legend>주문 목록</legend>
	<ul>
		<li>상품명1:<input type="text" name="pdto[0].productName">-
		개수:<input type="text" name="pdto[0].num">-
		비고:<input type="text" name="pdto[0].bigo"></li>
		<li>상품명2:<input type="text" name="pdto[1].productName">-
		개수:<input type="text" name="pdto[1].num">-
		비고:<input type="text" name="pdto[1].bigo"></li>
		<li>상품명3:<input type="text" name="pdto[2].productName">-
		개수:<input type="text" name="pdto[2].num">-
		비고:<input type="text" name="pdto[2].bigo"></li>
	</ul>
</fieldset>
<fieldset>
	<legend>주문매장정보</legend>
	<ul>
		<li>매장명:<input type="text" name="mdto.marketname"></li>
		<li>매장전화번호:<input type="text" name="mdto.markettel"></li>
		<li>매장주소:<input type="text" name="mdto.marketaddr"></li>
	</ul>
	<div><input type="submit" value="발주"></div>
</fieldset>
</form>
</body>
</html>