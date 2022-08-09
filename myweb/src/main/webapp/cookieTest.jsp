<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>cookieTest.jsp</h1>

<%
//1.쿠키들을 가져오기
Cookie cks[]=request.getCookies();

if(cks!=null){
	for(int i=0;i<cks.length;i++){
		String key=cks[i].getName();
		String value=URLDecoder.decode(cks[i].getValue());
		out.print("<h3>key:"+key+"/value:"+value+"</h3>");
	}
}
%>

<!-- ---------------------------->
<%
	//1.쿠키객체 생성
	String data="홍 길동";
	URLEncoder.encode(data);

	Cookie ck1=new Cookie("name",data);

	//2.쿠키나이 지정
	ck1.setMaxAge(60*3);
	
	//3.사용자에게 심기
	response.addCookie(ck1);
	
	Cookie ck2=new Cookie("age","20");
	ck2.setMaxAge(60*3);
	response.addCookie(ck2);
%>

</body>
</html>