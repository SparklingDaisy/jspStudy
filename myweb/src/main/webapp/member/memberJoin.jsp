<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/mainLayout.css">
 <head>
  <meta charset="UTF-8">
  <title>Document</title>
  <style>
h1{
	text-align:center;
}

fieldset{
	width:500px;
	margin:0px auto;
}

fieldset li{
   list-style-type: none;
}

fieldset li label{
   width: 80px;
   float: left;
  }

fieldset div{
	text-align:center;
}

 </style>
  <script>
 function openIdCheck(){
	 window.open('idCheck.jsp','idCheck','width=450,height=150');
 }
  </script>
 </head>
 <body>
 <%@include file="../header.jsp" %>
	<section>
		<article>
			<h1>회원가입</h1>
				<form name="memberJoin" action="memberJoin_ok.jsp">
				<fieldset>
					<legend>회원가입</legend>
					<ul>
						<li><label>ID</label>
							<input type="text" name="id" readonly>
							<input type="button" value="중복검사" onclick="openIdCheck();">
						</li>
						<li><label>Password</label>
							<input type="password" name="pwd">
						</li>
						<li><label>Name</label>
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
						<input type="reset" value="다시작성">
					</div>
				</fieldset>
			</form>
		</article>
	</section>
<%@include file="../footer.jsp" %>
 </body>
</html>