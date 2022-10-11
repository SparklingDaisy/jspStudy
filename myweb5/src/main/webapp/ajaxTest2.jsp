<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/httpRequest.js"></script> <!-- 링크하나에 스크립트 태그 1개 -->
<script>
function show(){
	var name=document.fm.name.value;
	var param='name='+name;
	sendRequest('testResult.jsp',param,showResult,'GET');
}
function showResult(){
	if(XHR.readyState==4){
		if(XHR.status==200){
			var data=XHR.responseText;
			window.alert(data);
		}
	}
}
</script>
</head>
<body>
<h1>ajaxTest2.jsp</h1>
<form name="fm" enctype="application/x-www-form-urlencoded">
이름:<input type="text" name="name">
<input type="button" value="ajaxTest2" onclick="show()">
 </form>
</body>
</html>