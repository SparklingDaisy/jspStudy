<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function timeDisplay(){
	
	var now=new Date();
	
	var h=now.getHours();
	var m=now.getMinutes();
	var s=now.getSeconds();
	
	var str=h+'시'+m+'분'+s+'초';
	var spanNode=document.all.timer;
	spanNode.innerHTML=str;
	
	window.setTimeout('timeDisplay()',1000);
}
</script>
</head>
<body onload="timeDisplay()">
<div>현재 시간은 <span id="timer">....</span> 입니다.</div>
</body>
</html>