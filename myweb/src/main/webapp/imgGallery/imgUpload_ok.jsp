<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<jsp:useBean id="idao" class="com.yong.imggallery.ImgGalleryDAO" scope="session"></jsp:useBean>
<%
String savepath=request.getRealPath("/imgGallery/userimg");
MultipartRequest mr=new MultipartRequest(request,savepath,1024*1024*10,"utf-8");
int result=idao.imgInsert(mr);
String msg=result>0?"이미지 업로드 완료!":"이미지 업로드 실패!";
%>
<script>
window.alert('이미지 업로드 완료!');
opener.location.reload();
window.self.close();
</script>