<%@page import="java.io.ObjectInputStream.GetField"%>
<%@page import="java.lang.reflect.Array"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.yong.imggallery.*" %>
<jsp:useBean id="idao" class="com.yong.imggallery.ImgGalleryDAO" scope="session"></jsp:useBean>
<%
String sid=(String)session.getAttribute("sid"); //세션은 오브젝트 이므로 다운캐스팅 필수
if(sid==null){
	%>
	<script>
		window.alert('로그인 후 이용가능합니다.');
		window.location.href="/myweb";
	</script>
	<%
	return; //조건을 쓸 때 밑에 밑에 있는 자바코드가 먼저 번역될 수 있으므로 우선 리턴으로 끊어줌
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/myweb/css/mainLayout.css">
<style>
h2{
	text-align:center;
}
table{
	width:550px;
	margin:0px auto;
	border-top:3px double darkblue;
	border-bottom:3px double darkblue;
}
table th{
	background-color:skyblue;
}
img{
	width:100px;
	height:100px;
}
</style>

<script>
function openUpload(){
	window.open('imgUpload.jsp','imgUpload','width=450,height=150');
}
function deleteImg(idx,id,filename){

	if(id!='<%=sid%>'){
		return;
	}
	var result=window.confirm("진짜 삭제하시겠습니까?");
	if(!result){
		return;
	}
	
	window.location.href='imgDelete.jsp?idx='+idx+'&id='+id+'&filename'+filename;
}
</script>

</head>

<body>
<%@include file="/header.jsp" %>
<section>
<article>
	<h2>이미지 갤러리</h2>
	<div>
		<input type="button" value="이미지 올리기" onclick="openUpload();">
	</div>
	<table>
		<thead>
			<tr>
				<th>이미지</th>
				<th>작성자</th>
				<th>삭제</th>
			</tr>
		</thead>
	</table>
	<tbody>
	<%
	ArrayList<ImgGalleryDTO> arr=idao.imgList();
	if(arr==null||arr.size()==0){
		%>
		<tr>
			<td colspan="3" align="center">
			등록된 이미지가 없습니다.
			</td>
		</tr>
		<%
	}else{
		for(int i=0;i<arr.size();i++){
			%>
			<tr>
				<td><img src="/myweb/imgGallery/userimg/<%=arr.get(i).getFilename()%>"></td>
				<td><%=arr.get(i).getId() %></td>
				<td><a href="javascript:deleteImg(<%=arr.get(i).getIdx()%>,'<%=arr.get(i).getId()%>','<%=arr.get(i).getFilename()%>');">삭제</a></td>
			</tr>
			<%
		}
	}
	%>
	</tbody>
</article>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>