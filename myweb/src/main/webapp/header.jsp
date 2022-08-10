<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
function openLogin(){
	window.open('/myweb/member/login.jsp','login','width=450,height=300');
}
</script>

<%
String sname=(String)session.getAttribute("sname");
%>

<header>
	<%if(sname==null||sname.equals("")){ %>
	<div>
		<a href="javascript:openLogin();">로그인</a>|
		<a href="/myweb/member/memberJoin.jsp">회원가입</a>
	</div>
	<%	
	}else{
		%>
		<div><%=sname %>님 로그인중...|<a href="/myweb/member/logout.jsp">로그아웃</a></div>
		<%
	}%>
	<h1>JSP Study Site</h1>
	<nav>
		<ul>
			<li><a href="/myweb">메인</a></li>
			<li><a href="/myweb/myProfile.jsp">개발자소개</a></li>
			<li>자유게시판</li>
			<li>이미지갤러리</li>
			<li>방명록</li>
		</ul>
	</nav>
	<hr>
</header>