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
<link rel="stylesheet" type="text/css" href="/myweb/css/mainLayout.css">
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

table th{
	background-color:skyblue;
}

</style>
</head>
<body>

<%@include file="/header.jsp" %>
	<section>
		<article>
			<h2>모든 사원 내역</h2>
			<table>
				<thead>
					<tr>
						<th>사원번호</th>
						<th>사원이름</th>
						<th>E-mail</th>
						<th>부서명</th>
					</tr>
				</thead>
				<tbody>
				<%
				EmpDTO dtos[]=edao.empSearch(edto);
				
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
						<tr>
							<td><%=dto.getIdx() %></td>
							<td><%=dto.getName() %></td>
							<td><%=dto.getEmail() %></td>
							<td><%=dto.getDept() %></td>			
						</tr>
						<%
					}
				}
				
				%>				
				</tbody>			
			</table>
		</article>
	</section>
<%@include file="/footer.jsp" %>

</body>
</html>