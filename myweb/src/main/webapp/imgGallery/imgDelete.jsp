<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="idao" class="com.yong.imggallery.ImgGalleryDAO" scope="session"></jsp:useBean>
<jsp:useBean id="idto" class="com.yong.imggallery.ImgGalleryDTO" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="idto"/>
<%
String path=request.getRealPath("");
int result=idao.imgDelete(idto,path);
String msg=result>0?"이미지 삭제 성공!":"이미지 삭제 실패!";
%>
<script>
window.alert('<%=msg%>');
window.location.href='imgGalleryList.jsp';
</script>