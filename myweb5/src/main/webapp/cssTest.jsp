<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.fontColor{
		color:blue;
	}
</style>
<script>

function show(){
	var divNode=document.getElementById('aa');
	//divNode.style.color='red';
	divNode.setAttribute('class','fontColor');
}

</script>
</head>
<body>
<div id="aa">text</div>
<input type="button" value="글자색상변경" onclick="show()">
</body>
</html>