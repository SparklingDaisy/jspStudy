<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="mdao" class="com.yong.member.MemberDAO"></jsp:useBean>

<%
String id=request.getParameter("id");
int result=mdao.idCheck(id);
String msg=result>0?"이미 존재하는 아이디입니다.":"사용할 수 있는 아이디입니다.";
%>

<%
if(result<=0){
	System.out.println("옮겨보자");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
	opener.document.getElementById("origin").value='123123';
</script>
</head>
<body onload="carry()">

</body>

<%} %>

<script>
window.alert('<%=msg %>');
window.self.close();
</script>
</html>