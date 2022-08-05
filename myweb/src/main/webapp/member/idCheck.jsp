<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="mdto" class="com.yong.member.MemberDTO"></jsp:useBean>
<jsp:setProperty property="*" name="mdto"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section>
	<article>
		<form name="idCheck" action="idCheck_ok.jsp">
			<fieldset>
				<legend>ID체크</legend>
				<label>ID</label>
				<input type="text" name="id">
				<input type="submit" value="검사">
			</fieldset>
		</form>
	</article>
</section>

</body>
</html>