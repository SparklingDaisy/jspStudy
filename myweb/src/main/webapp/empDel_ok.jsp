<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
    
    
<%
String name=request.getParameter("name"); //이름 파라미터 가져오기

Class.forName("oracle.jdbc.driver.OracleDriver"); 
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="scott";
String pwd="1234";

Connection conn=DriverManager.getConnection(url,user,pwd);
String sql="delete from employee where name =?"; // (= 또는 like 가능)
PreparedStatement ps=conn.prepareStatement(sql);

ps.setString(1, name);
int count=ps.executeUpdate(); //select는 ps.excuteQuery

ps.close();
conn.close();

String msg=count>0?"제명 성공!":"제명 실패!";
%>

<script>
	window.alert('<%=msg%>');
	window.location.href='emp.jsp';
</script>