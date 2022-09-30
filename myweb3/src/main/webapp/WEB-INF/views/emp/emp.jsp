<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>마지막 사원관리 프로그램</h1>
<form name="empAdd" action="empAdd.do">
	<fieldset>
		<legend>사원등록</legend>
		<table>
			<tr>
				<td>사원이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>E-mail</td>
				<td><input type="text" name="email"></td>
			</tr>	
			<tr>
				<td>부서명</td>
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
<form name="empDel" action="empDel.do">
	<fieldset>
		<legend>사원삭제</legend>
			<table>
				<tr>
					<th>사원이름</th>
					<td><input type="text" name="name">
					<input type="submit" value="사원삭제"></td>
				</tr>
			</table>
	</fieldset>
</form>
<hr>
	<fieldset>
		<legend>모든 사원 내역</legend>
		<h3><a href="empList.do">모든 사원 내역 보기</a></h3>
	</fieldset>
<hr>
	<fieldset>
		<form name="empSearch" action="empSearchList.do">
	 		<legend>사원검색</legend>
			<table>
				<tr>
					<th>사원이름</th>
					<td><input type="text" name="name">
					<input type="submit" name="사원검색" value="검색"></td>
				</tr>
			</table>
		</form>		
	</fieldset>
<hr>
	<fieldset>
		<form name="empUpdate" action="empInfo.do">
	 		<legend>사원정보수정</legend>
			<table>
				<tr>
					<th>사원번호</th>
					<td><input type="text" name="idx">
					<input type="submit" name="사원검색" value="검색"></td>
				</tr>
			</table>
		</form>		
	</fieldset>
</body>
</html>