<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.yong.bbs.*" %>
<jsp:useBean id="bdao" class="com.yong.bbs.BbsDAO" scope="session"></jsp:useBean>

<%
String idx_s=request.getParameter("idx");
if(idx_s==null||idx_s==("")){
	idx_s="0";	
}
int idx=Integer.parseInt(idx_s);
BbsDTO dto=bdao.bbsContent(idx);
if(dto==null){
	%>
	<script>
	window.alert('삭제된 게시글 또는 잘못된 접근입니다.');
	location.href='bbsList.jsp';
	</script>
	<%
	return;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/mainLayout.css">
</head>
<body>
<%@include file="../header.jsp" %>
<section>
	<article>
		<h2>자유게시판 본문보기</h2>
		<table border="1" width="550" cellspacing="0">
			<tr>
				<th>번호</th>
				<td><%=dto.getIdx() %></td>
				<th>작성날짜</th>
				<td><%=dto.getWritedate() %></td>
			</tr>
			<tr>
				<th>번호</th>
				<td><%=dto.getWriter() %></td>
				<th>번호</th>
				<td><%=dto.getReadnum() %></td>								
			</tr>
			<tr>
				<th>제목</th>
				<td colspan="3"><%=dto.getSubject() %></td>
			</tr>
			<tr height="250">
				<td colspan="4"><%=dto.getContent().replaceAll("\n", "<br>") %></td>
			</tr>
			<tr>
				<td colspan="4"><a href="bbsList.jsp">목록</a>|<a href="bbsReWrite.jsp?subject=<%=dto.getSubject()%>&ref=<%=dto.getRef()%>&lev=<%=dto.getLev()%>&sunbun=<%=dto.getSunbun()%>">답변</a></td>
			</tr>
		</table>
	</article>
</section>
<%@include file="../footer.jsp" %>
</body>
</html>