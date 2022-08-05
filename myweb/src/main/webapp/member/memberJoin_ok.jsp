<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="mdto" class="com.yong.member.MemberDTO"></jsp:useBean>
<jsp:setProperty property="*" name="mdto"/>
<jsp:useBean id="mdao" class="com.yong.member.MemberDAO"></jsp:useBean>

<%
int result=mdao.memberJoin(mdto);
String msg=result>0?"회원가입이 성공적으로 완료되었습니다!":"회원가입에 실패하였습니다.";
%>

<script>
window.alert('<%=msg%>');
window.location.href='index.jsp';
</script>
