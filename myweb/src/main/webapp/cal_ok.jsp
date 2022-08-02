<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/mainLayout.css">
<style>
article{
	text-align:center;
}

</style>
</head>
	<body>
	<%@include file="header.jsp" %>
	<section>
		<article>
			<h2>사칙 계산 결과</h2>
			<%
			String num1_s=request.getParameter("num1");
			String oper=request.getParameter("oper");
			String num2_s=request.getParameter("num2");
			
			int num1=Integer.parseInt(num1_s);
			int num2=Integer.parseInt(num2_s);
			char oper_c=oper.charAt(0);
			
			int result=0;
		
			switch(oper_c){
				case '+': result=num1+num2;break;
				case '-': result=num1-num2;break;
				case '*': result=num1*num2;break;
				case '/': result=num1/num2;
			}%>
			<h2><%=num1 %><%=oper %><%=num2 %>=<%=result %></h2>
		
				
		</article>
	</section>
	<%@include file="footer.jsp" %>
	</body>
</html>