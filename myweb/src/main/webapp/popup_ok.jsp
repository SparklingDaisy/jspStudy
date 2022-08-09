<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String popupstate=request.getParameter("popupstate");
if(popupstate!=null){
	Cookie ck=new Cookie("popupstate","on");
	ck.setMaxAge(60*60*24);
	response.addCookie(ck);
	
}
%>
<script>
window.self.close();
</script>