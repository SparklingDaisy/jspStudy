<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<%String idx_s=request.getParameter("idx");
int idx=Integer.parseInt(idx_s);

Class.forName("oracle.jdbc.driver.OracleDriver");
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="scott";
String pwd="1234";
Connection conn=DriverManager.getConnection(url,user,pwd);
String sql="select * from employee where idx=?";
PreparedStatement ps=conn.prepareStatement(sql);
ps.setInt(1,idx);
ResultSet rs=ps.executeQuery();

//rs.next();

if(!rs.next()){
	%>
	<script>
	window.alert('등록된 사원이 없습니다.');
	window.location.href='emp.jsp';
	</script>
	<%
	return;
}
%>
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
<%@include file="header.jsp" %>

<section>
	<article>
	<h2><%=idx %>사번 사원정보</h2>
		<form name="empUpdate" action="empUpdate_ok.jsp">
		<input type="hidden" name="idx" value="<%=idx %>">
			<fieldset>
				<legend>사원정보</legend>
					<table>
						<tr>
							<th>사원번호:</th>
							<td><%=idx %>번</td>
						</tr>
						<tr>
							<th>사원이름:</th>
							<td><input type="text" name="name" value="<%=rs.getString("name") %>"></td>
						</tr>
						<tr>
							<th>E-mail:</th>
							<td><input type="text" name="email" value="<%=rs.getString("email") %>"></td>
						</tr>
						<tr>
							<th>부서명:</th>
							<td><input type="text" name="dept" value="<%=rs.getString("dept") %>"></td>
						</tr>
						<tr>
							<td colspan="2" align="center">
							<input type="submit" value="정보수정">
							<input type="button" value="돌아가기" onclick="window.location.href='emp.jsp';" >
							</td>				
						</tr>
					</table>
					<%
					rs.close();
					ps.close();
					conn.close(); 
					%> 
			</fieldset>
		</form>
	</article>
</section>

<%@include file="footer.jsp" %>
</body>
</html>