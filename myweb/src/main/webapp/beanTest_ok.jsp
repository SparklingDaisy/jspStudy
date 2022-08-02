<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<h1>beanTest_ok.jsp</h1>

<jsp:useBean id="btest" class="com.yong.bean.BeanTestDTO"></jsp:useBean>
<jsp:setProperty property="*" name="btest"/>

<h2>이름:<jsp:getProperty property="name" name="btest"/></h2>
<h2>나이:<%=btest.getAge() %></h2>
<h2>주소:<%=btest.getAddr() %></h2>
<h2>전화번호:<%=btest.getTell() %></h2>
</body>
</html>