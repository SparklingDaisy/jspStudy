<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/mainLayout.css">
<style>

h2{
	text-align:center;
}

fieldset{
	width:450px;
	margin:0px auto;
}

fieldset li{
	list-style-type: none;
}

label{
	width:80px;
	float:left;
}

fieldset div{
	text-align:center;
}

</style>
</head>
<body>
<%@include file="header.jsp" %>
	<section>
		<article>
			<h2>폼 테스트</h2>
			<form name="fm" action="formTest_ok.jsp">
				<fieldset>
				<legend>폼 테스트</legend>
				<ul>
					<li><label>이름</label>
						<input type="text" name="name">						
					</li>
					<li>
						<label>비밀번호</label>
						<input type="password" name="pwd">
					</li>
					<li>
						<label>성별</label>
						<input type="radio" name="sex" value="남자">남자
						<input type="radio" name="sex" value="여자">여자
						<input type="radio" name="sex" value="트랜스">트랜스
					</li>
					<li>
						<label>취미</label>
						<input type="checkbox" name="cbs" value="공부">공부
						<input type="checkbox" name="cbs" value="독서">독서
						<input type="checkbox" name="cbs" value="운동">운동
						<input type="checkbox" name="cbs" value="음악">음악
						<input type="checkbox" name="cbs" value="게임">게임
					</li>
				</ul>
				<div>
					<input type="submit" value="데이터 전달">
					<input type="reset" value="다시작성">
				</div>
				</fieldset>
			</form>
		</article>
	</section>
<%@include file="footer.jsp" %>
</body>
</html>

