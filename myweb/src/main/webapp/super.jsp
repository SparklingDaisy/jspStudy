<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%String str="java"; %>

<h1 Style="color:blue">super.jsp에서 출력한 문장 A</h1>
<h1 Style="color:blue">super.jsp에서 출력한 str의값:<%=str %> A</h1>

<jsp:include page="sub.jsp">
	<jsp:param value="<%=str %>" name="str"/>
</jsp:include>

<h1 Style="color:blue">super.jsp에서 출력한 문장 B</h1>

<!-- super.jsp?temp=hahaha 이런식으로 값을 넘길 수 있음 -->

</body>
</html>