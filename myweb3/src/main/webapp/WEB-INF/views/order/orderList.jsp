<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>발주 내역 확인</h1>
<fieldset>
	<legend>발주 상품 내역</legend>
	<ul>
		<c:forEach var="item" items="${orderDTO.pdto }">
		<li>상품명:${item.productname }/주문개수:${item.num }/비고:${item.bigo }</li>
		</c:forEach>
	</ul>
</fieldset>
<fieldset>
	<legend>주문매장정보</legend>
		<ul>
			<li>매장명:${orderDTO.mdto.marketname }</li>
			<li>매장전화번호:${orderDTO.mdto.markettel }</li>
			<li>매장주소:${orderDTO.mdto.marketaddr }</li>
		</ul>
</fieldset>
</body>
</html>