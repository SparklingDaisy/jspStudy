<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/mainLayout.css">
 <head>
  <meta charset="UTF-8">
  <title>Document</title>
  <style>
  
  table{
	border-spacing:0px;
	margin:0px auto;
  }
  
  h1{
  	text-align:center;
  }

  td{
	margin:0px auto;
  }

  .table{
	width:50%;
	border-bottom:1px solid red;
	
  }

  .firTd{
  	width:10%;
	border-top:1px solid red;
  }
  
  .fin{
  	border-bottom:1px solid red; 
  	border-top:1px solid red;
  }

  </style>
  <script>
 function openPopup(){
	 
	 window.open("idCheck.jsp",'idCheck',"width=500,height=500");
 }

  </script>
 </head>
 <body>
	<section>
		<article>
			<form name="memberJoin" action="memberJoin_ok.jsp">
				<h1>회원가입</h1>
				<table>
					<tr>
						<td class="firTd"><b>ID</b></td>
						<td class="firTd"><input type="text" name="id" id="origin" readonly> 
						<input type="button" value="Check ID" onclick="openPopup();"></td>
					</tr>
					<tr>
						<td class="firTd"><b>비밀번호</b></td>
						<td class="fin"><input type="password" name="pwd">
					</tr>

					<tr>
						<td class="firTd"><b>이름</b></td>
						<td class="table"><input type="text" name="name">
					</tr>

					<tr>
						<td class="firTd"><b>E-mail</b></td>
						<td class="table"><input type="text" name="email"></td>
					</tr>
					<tr>
						<td class="firTd"><b>전화번호</b></td>
						<td class="table"><input type="text" name="tel"></td>
					</tr>
					<tr>
						<td class="fin"><b>주소</b></td>
						<td class="table"><input type="text" name="addr"></td>
					</tr>

				</table>
				<table>
					<tr>
						<td><input type="submit" name="memberJoin" value="회원가입"></td>
						<td><input type="reset" value="다시작성"></td>
					</tr>
				</table>
			</form>
		</article>
	</section>
 </body>
</html>