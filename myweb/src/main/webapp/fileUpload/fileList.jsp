<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/myweb/css/mainLayout.css">
</head>
<body>
<%@include file="/header.jsp" %>
	<section>
		<article>
			<h2>파일 다운로드 목록</h2>
			<fieldset>
				<legend>다운가능 목록</legend>
				<%
				String path=request.getRealPath("/fileUpload/files");
				File f=new File(path);
				String names[]=f.list();
				%>
				<ul>
					<%
					for(int i=0;i<names.length;i++){
						%>
						<li><a href="/myweb/fileUpload/files/<%=names[i]%>"><%=names[i] %></a></li>
						<%
					}
					%>
				</ul>
			</fieldset>
		</article>
	</section>
<%@include file="/footer.jsp" %>
</body>
</html>