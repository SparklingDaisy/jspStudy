<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %> <!-- 멀티파트 리퀘스트가 있는 폴더 -->

<%
String savepath=request.getRealPath("/fileUpload/files");
MultipartRequest mr = new MultipartRequest(request,savepath,1024*1024*10,"utf-8");


//String writer=request.getParameter("writer");
String writer=mr.getParameter("writer");
System.out.println("writer="+writer);
%>

<script>
window.alert('ok!');
window.location.href='/myweb';
</script>