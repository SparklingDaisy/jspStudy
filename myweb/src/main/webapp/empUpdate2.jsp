<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.yong.emp.*" %>
    
<jsp:useBean id="edto" class="com.yong.emp.EmpDTO"></jsp:useBean>
<jsp:setProperty property="*" name="edto"/>
<jsp:useBean id="edao" class="com.yong.emp.EmpDAO"></jsp:useBean>		

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/mainLayout.css">
	<style>
	h2{
		color:skyblue;
		text-align:center;
	}
	
	table{
		width:450px;
		border-top:3px double darkblue;
		border-bottom:3px double darkblue;
		margin:0px auto;
	}
	</style>
</head>

<body>
<%@include file="/header.jsp" %>

<%
	EmpDTO dtos[]=edao.empSearchIdx(edto);
	
	if(dtos==null||dtos.length==0){    //객체가 null이거나 dto의 길이가 0인 경우 출력할게 없음
		%>
		<tr>
			<td colspan="4" align="center">
			등록된 사원이 없습니다.
			</td>
		</tr>
		<%
		
	}else{
		for(int i=0;i<dtos.length;i++){
			EmpDTO dto=dtos[i];
			%>

<section>
	<article>
	<h2><%=dto.getIdx() %>사번 사원정보</h2>
		<form name="empUpdate2" action="empUpdate2_ok.jsp">
			<fieldset>
				<legend>사원정보</legend>
					<table>
						<tr>
							<th>사원번호:</th>
							<td><%=dto.getIdx() %>번</td>
						</tr>
						<tr>
							<th>사원이름:</th>
							<td><input type="text" name="name" value="<%=dto.getName()%>"></td>
						</tr>
						<tr>
							<th>E-mail:</th>
							<td><input type="text" name="email" value="<%=dto.getEmail()%>"></td>
						</tr>
						<tr>
							<th>부서명:</th>
							<td><input type="text" name="dept" value="<%=dto.getDept() %>"></td>
						</tr>
						<tr>
							<td colspan="2" align="center">
							<input type="submit" value="정보수정">
							<input type="button" value="돌아가기" onclick="window.location.href='emp.jsp';" >
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

<%@include file="/footer.jsp" %>
</body>
</html>
</head>
<body>

</body>
</html>