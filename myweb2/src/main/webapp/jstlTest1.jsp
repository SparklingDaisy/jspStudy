<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jstlTest1.jsp</h1>
<c:set var="num1" value="100"></c:set>
<c:set var="num2">200</c:set>
<h3>num1:${num1}</h3>
<h3>num2:${num2}</h3>
<h3>num1+num2=${num1+num2}</h3>

<%
	String[] fruit={"사과","배","포도","딸기"};
%>

<c:set var="f" value="<%=fruit %>"></c:set>
<ul>
	<li>${f}</li>
	<li>${f[0]}</li>
	<li>${f['1']}</li>
	<li>${f["2"]}</li>
</ul>
<hr>
<c:remove var="f"/> <!-- 어차피 데이터가 1회성이므로 알아서 지워져서 안써도된다. -->
<ul>
	<li>${f}</li>
	<li>${f[0]}</li>
	<li>${f['1']}</li>
	<li>${f["2"]}</li>
</ul>
<hr>
<%
HashMap map=new HashMap();
%>
<c:set var="m" value="<%=map %>"></c:set>
<c:set target="${m}" property="name" value="홍길동"></c:set>
<c:set target="${m}" property="age">20</c:set>
<c:set target="${m}" property="user-addr" value="서울"></c:set>

<h3>이름:${m.name}</h3>
<h3>나이:${m.age}</h3>
<h3>주소:${m.user-addr}</h3> <!-- .부터 다음 특수문자까지 단어를 키값으로 인지함 -->
<h3>주소:${m['user-addr']}</h3> <!-- 특수문자가 있을 경우 지정연산자를 사용할 수 있다 -->
<h3>이름:${m['name']}</h3>
</body>
</html>