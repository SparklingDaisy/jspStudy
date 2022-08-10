<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/mainLayout.css">
<script>
function openPopup(){
	window.open('popup.html','popup','width=300,height=300');
}
</script>
</head>
<%
String lastDay="첫 방문이시군요~!";
String popupck=null;
Cookie cks[]=request.getCookies();

if(cks!=null){
	for(int i=0;i<cks.length;i++){
		if(cks[i].getName().equals("lastDay")){
			lastDay=URLDecoder.decode(cks[i].getValue());
		}
		
		if(cks[i].getName().equals("popupstate")){
			popupck="on";
		}
	}
}
%>
<body <%=popupck==null?"onload='openPopup()'":"" %>>
	<%@include file="header.jsp" %>
	<section>
		<article id="mainImg">
			<img src="img/main.jpg" alt="메인이미지">
		</article>
		<article id="subMenu">
			<h2>아래에 메뉴가 추가됨</h2>
			
			<h3><%=lastDay %></h3>
			<!--  -->
			<%
			Calendar now=Calendar.getInstance();
			int y=now.get(Calendar.YEAR);
			int m=now.get(Calendar.MONTH)+1;
			int d=now.get(Calendar.DATE);
			
			String today="마지막 접속:"+y+"년 "+m+"월 "+d+"일";
			today=URLEncoder.encode(today);
			
			Cookie ck=new Cookie("lastDay",today);
			ck.setMaxAge(60*60*24*30);
			response.addCookie(ck);
			
			%>
			
			<!--  -->
			<ul>
				<li>여기에 추가</li>
				<li><a href="formTest.jsp">폼 테스트</a></li>
				<li><a href="cal.jsp">사칙계산기</a></li>
				<li><a href="emp.jsp">사원관리프로그램(모델1기본형)</a></li>
				<li><a href="emp2.jsp">사원관리프로그램(모델1빈즈방식)</a></li>
				<li><a href="member/memberFind.jsp?sw=1">회원 검색</a></li>
				<li><a href="fileUpload/uploadForm.jsp">파일 업로드 테스트</a></li>
				<li><a href="fileUpload/fileList.jsp">파일 다운로드 목록</a></li>
			</ul>
		</article>
	</section>
	<%@include file="footer.jsp" %>
</body>
</html>
