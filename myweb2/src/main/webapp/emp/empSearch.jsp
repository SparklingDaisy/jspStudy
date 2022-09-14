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
<h1>모든 사원 내역</h1>
	<table border="1" cellspacing="0" width="450">
		<thead>
			<tr>
				<th>사원번호</th>
				<th>사원이름</th>
				<th>e-mail</th>
				<th>부서명</th>
			</tr>
		</thead>
		<tbody>
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
				<tr>
					<td><%=arr.get(i).getIdx() %></td>
					<td><%=arr.get(i).getName() %></td>
					<td><%=arr.get(i).getEmail() %></td>
					<td><%=arr.get(i).getDept() %></td>
				</tr>
				<%
			}
		}
		%>	
		</tbody>	
	</table>
</body>
</html>