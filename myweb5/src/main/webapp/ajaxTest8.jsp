<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
window.onload=function(){
	var fontNode=document.getElementById('fon');
	fontNode.setAttribute('color','blue');
	fontNode.setAttribute('color','red');
	fontNode.removeAttribute('color');
	var sizeData=fontNode.getAttribute('size');
	window.alert(sizeData);
}
</script>
</head>
<body>
<font id="fon" size="7">노드 속성 테스트</font>
</body>
</html>