<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="mdao" class="com.yong.member.MemberDAO"></jsp:useBean>
<%
String userId=request.getParameter("id");
boolean state=mdao.idCheck(userId);

if(state){
	%>
	<script>
	window.alert('<%=userId %>는 이미 등록된 아이디입니다.');
	window.location.href='idCheck.jsp';
	</script>
	<%
}else{
	%>
	<script>
	window.alert('<%=userId%>는 사용가능한 아이디입니다.');
	opener.document.memberJoin.id.value='<%=userId%>';
	window.self.close();
	</script>
	<%
}


%>