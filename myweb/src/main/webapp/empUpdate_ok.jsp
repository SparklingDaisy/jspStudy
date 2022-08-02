<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>

<%
int idx=Integer.parseInt(request.getParameter("idx"));

String name=request.getParameter("name");
String email=request.getParameter("email");
String dept=request.getParameter("dept");

Class.forName("oracle.jdbc.driver.OracleDriver");
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="scott";
String pwd="1234";
Connection conn=DriverManager.getConnection(url,user,pwd);

String sql="update employee set name=?,email=?,dept=? where idx=?";

PreparedStatement ps=conn.prepareStatement(sql);
ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,dept);
ps.setInt(4,idx);
int count=ps.executeUpdate();
ps.close();
conn.close();
String msg=count>0?"사원수정성공":"사원수정실패!";
%>

<script>
window.alert('<%=msg %>');
window.location.href='emp.jsp';
</script>