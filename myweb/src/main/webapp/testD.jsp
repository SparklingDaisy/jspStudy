<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,java.io.*,java.text.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단</title>
</head>
<body>
<h1>jsp로 출력한 구구단</h1>
<%
	out.println("<table border='1' width='550' cellspacing='0'>");
	for(int i=1;i<=9;i++){
		for(int j=2;j<=9;j++){
			out.println("<td>");
			out.println(j+"x"+i+"="+(j*i));
			out.println("</td>");
		}
		out.println("</tr>");
	}
out.println("</table>");
%>
<hr>
<table border="1" cellspacing="0" width="550">
	<%for(int i=1;i<=9;i++){ %>
	<tr>
		<%for(int j=2;j<=9;j++){ %>
		<td><%=j %>x<%=i %>=<%=i*j %></td>
		<%} %>
	</tr>
	<%} %>

</table>
</body>
</html>