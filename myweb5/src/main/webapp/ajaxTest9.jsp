<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
window.onload=function(){
	
	var newSpanNode=document.createElement('span');
	var newSpanTextNode=document.createTextNode('새로운 span 태그!');
	
	newSpanNode.appendChild(newSpanTextNode);
		
	var h1Node=document.getElementById('a');
	h1Node.appendChild(newSpanNode);
	
	var newPNode=document.createElement('p');
	var newPTextNode=document.createTextNode('이것은 새로운 p태그입니다.');
	
	newPNode.appendChild(newPTextNode);
	
	var bodyNode=h1Node.parentNode;
	bodyNode.insetBefore(newPNode,h1Node);
	
	bodyNode.removeChild(h1Node);
	
}
</script>
</head>
<body>
<h1 id="a">이것은 제목입니다.</h1>
<form>이것은 form태그 입니다.</form>

</body>
</html>