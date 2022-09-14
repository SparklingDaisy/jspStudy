<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.yong.emp.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		ArrayList<EmpDTO> arr=(ArrayList)request.getAttribute("arr");
		if(arr==null||arr.size()==0){
			%>
			<tr>
				<td colspan="4" align="center">
					등록된 사원이 없습니다.
				</td>
			</tr>
			<%
		
		}else{
			for(int i=0;i<arr.size();i++){
			%>

<section>
	<article>
	<h2><%=arr.get(i).getIdx() %>사번 사원정보</h2>
		<form name="empUpdate" action="empUpdate.yong">
			<fieldset>
				<legend>사원정보</legend>
					<table>
						<tr>
							<th>사원번호:</th>
							<td><%=arr.get(i).getIdx()%>번</td>
							<input type="hidden" name="idx" value="<%=arr.get(i).getIdx()%>">
						</tr>
						<tr>
							<th>사원이름:</th>
							<td><input type="text" name="name" value="<%=arr.get(i).getName()%>"></td>
						</tr>
						<tr>
							<th>E-mail:</th>
							<td><input type="text" name="email" value="<%=arr.get(i).getEmail()%>"></td>
						</tr>
						<tr>
							<th>부서명:</th>
							<td><input type="text" name="dept" value="<%=arr.get(i).getDept()%>"></td>
						</tr>
						<tr>
							<td colspan="2" align="center">
							<input type="submit" value="정보수정">
							<input type="button" value="돌아가기">
							</td>				
						</tr>
					</table>
						<%
		}
	}	
%>

			</fieldset>
		</form>
	</article>
</section>
</body>
</html>