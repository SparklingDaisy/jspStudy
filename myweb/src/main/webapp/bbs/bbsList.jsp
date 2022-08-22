<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.yong.bbs.*" %>
<jsp:useBean id="bdao" class="com.yong.bbs.BbsDAO" scope="session"></jsp:useBean>
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
	border-spacing:0px; 				<!-- cellspecing과 같음 -->
}
table thead th{
	background-color:skyblue;
}
</style>
</head>
<%
int totalCnt=bdao.getTotalCnt(); //실제 디비로부터 가져오는 정보
int listSize=5; //한 페이지에 보여줄 게시글 수
int pageSize=5; //한 페이지에 보여줄 페이지 수

String cp_s=request.getParameter("cp");
if(cp_s==null||cp_s.equals("")){
	cp_s="1";
}
int cp=Integer.parseInt(cp_s); //사용자 현재 페이지 위치

int totalPage=totalCnt/listSize+1; //총 페이지 수
if(totalCnt%listSize==0)totalPage--;

int userGroup=cp/pageSize; // 사용자 현재위치에서 보여줄 페이지의 그룹
if(cp%pageSize==0)userGroup--;

%>
<body>
<%@include file="/header.jsp" %>
<section>
	<article>
		<h2>자유게시판</h2>
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>날짜</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<td colspan="4" align="center">
					<!-- 페이징이 들어갈 영역 -------------------------------->
					<%
						if(userGroup!=0){
							%>
							<a href="bbsList.jsp?cp=<%=(userGroup-1)*pageSize+pageSize %>">&lt;&lt;</a>
							<%	
						}
					%>
					
					<%
						for(int i=userGroup*pageSize+1;i<=(userGroup*pageSize+pageSize);i++){
							%>&nbsp;&nbsp;<a href="bbsList.jsp?cp=<%=i%>"><%=i %></a>&nbsp;&nbsp;<%
							if(i==totalPage)break;
						}
					%>
					
					<%
						if(userGroup!=(totalPage/pageSize)-(totalPage%pageSize==0?1:0)){
							%>
							<a href="bbsList.jsp?cp=<%=(userGroup+1)*pageSize+1%>">&gt;&gt;</a>
							<%
						}
					%>
					<!------ ------------------------------------------->
					</td>
					<td align="center">
					<a href="bbsWrite.jsp">글쓰기</a>
					</td>
				</tr>
			</tfoot>
			<tbody>
			
				<%
				ArrayList<BbsDTO> arr=bdao.bbsList(listSize,cp);
				if(arr==null||arr.size()==0){
					%>
					<tr>
						<td colspan="5" align="center">
						등록된 게시물이 없습니다.
					</tr>
					<%
				}else{
					for(int i=0;i<arr.size();i++){
						%>
						<tr>
							<td><%=arr.get(i).getIdx() %></td>
							<td><a href="bbsContent.jsp?idx=<%=arr.get(i).getIdx()%>"><%=arr.get(i).getSubject() %></td>
							<td><%=arr.get(i).getWriter() %></td>
							<td><%=arr.get(i).getWritedate() %></td>
							<td><%=arr.get(i).getReadnum() %></td>
						</tr>
						<%
					}
				}
				%>
				
			</tbody>
		</table>
	</article>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>