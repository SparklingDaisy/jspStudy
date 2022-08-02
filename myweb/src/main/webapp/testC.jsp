<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,java.io.*,java.text.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h1{
	color.red;
}
</style>
</head>
<body>
 <h1>이것은 html태그로 작성한 내용입니다.</h1>
 <!-- 이것은 html주석입니다. -->
 
<%
//여기는 자바코드를 작성할 수 있는 영역
/*여러줄 주석*/
/**문서화 주석*/
System.out.println("이것은 자바코드에 작성한 문장");

//jsp 기본객체 : 원래부터 제공되는 객체
//request,response 기타등등.
//출력용 기본객체 : out
//번역순서 : 서버언어인 java 그리고 javascript,css,html
out.println("<h2>이것도 자바코드에서 작성한 문장!!</h2>");

String str="java";//지역변수, servlet의 service라는 메소를 통해 번역됨으로 지역변수
out.println("<h2>str값:"+str+"</h2>");
%>

<h2>str의 값:<%out.println(str); %></h2>
<h2>str의 값:<%=str %></h2>

<%!
String str="jsp";//멤버변수

public int getSumNum(int num1,int num2){
	int result=num1+num2;
	return result;
}
%>

<%
out.println("<h2>3+5="+getSumNum(3,5)+"</h2>");
%>
<h2>5+11=<%=getSumNum(5,11) %></h2>
<h2>str의 값:<%=this.str %></h2>

<%
Calendar now=Calendar.getInstance();
int y=now.get(Calendar.YEAR);
int m=now.get(Calendar.MONTH)+1;
int d=now.get(Calendar.DATE);
out.print("<h2>"+y+"년"+m+"월"+d+"일"+"</h2>");
%>

</body>
</html>