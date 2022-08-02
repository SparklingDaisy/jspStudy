<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/myweb/css/mainLayout.css">
<style>
h2{
	text-align:center;
}

fieldset{
	width:450px;
	margin:0px auto;
}

table{
 width:400px;
 margin:0px auto;

}
</style>
</head>
<body>
<%@include file="/header.jsp" %>
	<section>
		<article>
			<h2>사원 관리 프로그램(빈즈방식)</h2>
			<form name="empAdd2" action="empAdd2_ok.jsp">
				<fieldset>
					<legend>사원등록</legend>
					<table>
						<tr>
							<th>사원이름</th>
							<td><input type="text" name="name"></td>
						</tr>
						<tr>
							<th>E-mail</th>
							<td><input type="text" name="email"></td>
						</tr>
						<tr>
							<th>부서명</th>
							<td><input type="text" name="dept"></td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<input type="submit" value="사원등록">
								<input type="reset" value="다시작성">
							</td>
						</tr>
					</table>
				</fieldset>
			</form>
		</article>
		<article>
			<form name="empDel2" action="empDel2_ok.jsp">
				<fieldset>
					<legend>사원삭제</legend>
						<table>
							<tr>
								<th>사원이름</th>
								<td><input type="text" name="name">
								<input type="submit" name="사원삭제"></td>
							</tr>
						</table>
				</fieldset>
			</form>
		</article>
		<article>
			<fieldset>
				<legend>사원내역</legend>
				<h3 style="text-align:center;"><a href="empList2.jsp">모든 사원 내역보기</a></h3>
			</fieldset>
		</article>	
	</section>
<%@include file="/footer.jsp" %>
</body>
</html>