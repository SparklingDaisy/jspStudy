<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="edto" class="com.yong.emp.EmpDTO"></jsp:useBean>
<jsp:useBean id="edao" class="com.yong.emp.EmpDAO"></jsp:useBean>

<%@include file="/header.jsp" %>
	<section>
		<article>
			<h2>모든 사원 내역</h2>
			<table>
				<thead>
					<tr>
						<th>사원번호</th>
						<th>사원이름</th>
						<th>E-mail</th>
						<th>부서명</th>
					</tr>
				</thead>
				<tbody>
				edao.empList(edto);
				</tbody>				
			</table>
		</article>
	</section>
<%@include file="/footer.jsp" %>

</body>
</html>