<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/mainLayout.css">
</head>
	<body>
	<%@include file="header.jsp" %>
	<section>
		<article>
			<h2>폼페이지에 넘어 온 파라미터들..</h2>
			<%
			String name=request.getParameter("name");
			String pwd=request.getParameter("pwd");
			String sex=request.getParameter("sex");
			String[] cbs=request.getParameterValues("cbs");
			%>
			
			<h3>넘어온 이름: <%=name %></h3>
			<h3>넘어온 비밀번호: <%=pwd %></h3>
			<h3>넘어온 성별: <%=sex %></h3>
			<h3>넘어온 취미:<%
				if(cbs==null){
					%>선택한 취미가 없습니다.<%
				}else{
					for(int i=0;i<cbs.length;i++){
						%><%=cbs[i]%><%
	        		}
				}
				%></h3>
				
		</article>
	</section>
	<%@include file="footer.jsp" %>
	</body>
</html>