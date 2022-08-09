<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.yong.member.*" %>

	    <%
	    request.setCharacterEncoding("utf-8");
	    %>

<jsp:useBean id="mdao" class="com.yong.member.MemberDAO"></jsp:useBean>

<%
String fkey=request.getParameter("fkey");
String fvalue=request.getParameter("fvalue");
ArrayList<MemberDTO> arr=mdao.memberFind(fkey,fvalue);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1" cellspacing="0" width="550">
	<thead>
		<tr>
			<th>회원번호</th>
			<th>ID</th>
			<th>이름</th>
			<th>E-mail</th>
			<th>가입날짜</th>
	</thead>
	<tbody>
	<%
	if(arr==null||arr.size()==0){
		%>
		<tr>
			<td colspan="5" align="center">
			검색된 회원이 없습니다.</td>
		</tr>
		<%
	}else{
		for(int i=0;i<arr.size();i++){
			%>
			<tr>
				<td><%=arr.get(i).getIdx() %></td>
				<td><%=arr.get(i).getId() %></td>
				<td><%=arr.get(i).getName() %></td>
				<td><%=arr.get(i).getEmail() %></td>
				<td><%=arr.get(i).getJoindate() %></td>
			</tr>
			
			<%
		}
	}
	%>
	</tbody>
</table>
</body>
</html>