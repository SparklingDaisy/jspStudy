<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="edto" class="com.yong.emp.EmpDTO"></jsp:useBean>
<jsp:setProperty property="*" name="edto"/>
<jsp:useBean id="edao" class="com.yong.emp.EmpDAO"></jsp:useBean>
<%
int result=edao.empUpdate(edto);
String msg=result>0?"사원정보수정 성공(beans)":"사원정보수정 실패(beans)";
%>

<script>
window.alert('<%=msg%>');
window.location.href='emp2.jsp';
</script>