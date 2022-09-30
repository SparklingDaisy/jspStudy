<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>request객체의 정보들</h1>
<h2>사용자 ip:<%=request.getRemoteAddr() %></h2>
<h2>사용자 port번호:<%=request.getRemotePort() %></h2>
<h2>서버의 ip(이름):<%=request.getServerName() %></h2>
<h2>서버의 서비스 port:<%=request.getServerPort() %></h2>
<h2>사용자의 프로토콜:<%=request.getProtocol() %></h2>
<h2>사용자의 접속방식:<%=request.getMethod() %></h2>
<h2>사용자의 접속페이지:<%=request.getRequestURI() %></h2>
<h2>사용자의 프로젝트:<%=request.getContextPath() %></h2>
<h2>해당 프로젝트 까지의 절대경로:<%=request.getRealPath("/") %></h2>
</body>
</html>