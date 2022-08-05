<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mdto" class="com.yong.member.MemberDTO"></jsp:useBean>
<jsp:setProperty property="id" name="mdto"/>
<jsp:useBean id="mdao" class="com.yong.member.MemberDAO"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function thorwId(){             
	opener.document.getElementById("mid").value=document.getElementById("cid").value;
	window.self.close();       
}
</script>
<%
String id=request.getParameter("id");
int check=mdao.idCheck(id);
if(check==1){
%>
<script>
window.alert('사용할 수 있는 아이디입니다.');
</script>
<%	
}else{
%>
<script>
window.alert('이미 사용중인 아이디입니다.');
</script>
<%
}
%>
</head>
<body>
	<form action="idCheck_ok.jsp" name="idCheck_ok">
	<%if(check==1){%>
		<input type="text" name="id" id="cid" value="<%=id%>"> 
		<input type="button" value="사용하기" onclick="thorwId();">
		<input type="button" value="다시작성" onclick="window.location.href='idCheck.jsp';">
	<%}else{ %>
		<input type="text" name="id" value="<%=id%>"> 
		<input type="submit" value="중복확인">
	<%} %>
	</form>
</body>
</html>