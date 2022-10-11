<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/httpRequest.js"></script>
<script type="text/javascript">
function openIdCheck(){
	window.open('idCheckForm.do','idCheck','width=400,height=300');
}
function idCheck(){
	var id=document.memberJoin.id.value;
	var param='id='+id;
	sendRequest('idCheck.do',param,idCheckResult,'GET');
}
function idCheckResult(){
		if(XHR.readyState==4){
			if(XHR.status==200){
				var data=XHR.responseText;
				document.all.idmsg.innerHTML=data;
			}
		}
	}
}
</script>
</head>
<body>
<h1>MVC SPRING 회원가입</h1>
<form name="memberJoin" action="memberJoin.do" method="post">
<fieldset>
	<legend>회원가입</legend>
	<ul>
		<li><label>ID</label>
			<input type="text" name="id">
			<input type="button" value="중복검사" onclick="idCheck()"><div id="idmsg" style="color:red"></div>
		</li>
		<li><label>Password</label>
			<input type="password" name="pwd">
		</li>
		<li><label>name</label>
			<input type="text" name="name">
		</li>
		<li><label>E-mail</label>
			<input type="text" name="email">
		</li>
		<li><label>Telephone</label>
			<input type="text" name="tel">
		</li>
		<li><label>Address</label>
			<input type="text" name="addr">
		</li>		
	</ul>
	<div>
	<input type="submit" value="회원가입">
	</div>
</fieldset>
</form>
</body>
</html>