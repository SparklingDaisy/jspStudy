<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function show(){
	var p1Node=document.all.p1; //노드
	p1Node.innerHTML='<b>글자가 바꼈습니다!!</b>';
	//window.alert(p1Node.innerHTML);
}
</script>
</head>
<body>
<p id="p1">안녕하세요 반갑습니다!<br>재미있는 ajax!!</p>
<input type="button" value="바껴라!" onclick="show()">
</body>
</html>