package com.yong.member;

import java.sql.*;

import com.yong.emp.EmpDTO;

public class MemberDAO {
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	/**DB연동 메서드*/
	public void dbConnect() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url="jdbc:oracle:thin:@localhost:1521:xe";
			String user="scott";
			String pwd="1234";
			conn=DriverManager.getConnection(url,user,pwd);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	/**ID중복검사 메서드*/
	public int idCheck(String id) {
		
		int result=-1;
		
		try {
			dbConnect();
			String sql="select * from jsp_member where id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, id);
			
			rs=ps.executeQuery();
			if(rs.next()) {
				result=1;
				System.out.println("리절트는"+result);
			}else {
				result=0;
				System.out.println("결과는"+result);
			}	
				
			
		}catch(Exception e) {
			e.printStackTrace();
			return -1; //잘못되면 음수를 돌려줌
		}finally {
			try {
				if(ps!=null)ps.close(); //null인 경우 에러가 발생하므로 미리 조건지정해줌
				if(conn!=null)conn.close();
				
			}catch(Exception e2) {
				}
			}
		
		return result;
			
		}
		
	
	/**회원가입 메서드*/
	public int memberJoin(MemberDTO dto) {
		try {
			dbConnect();
			String sql="insert into jsp_member values(jsp_member_idx.nextval,?,?,?,?,?,?,sysdate)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getPwd());
			ps.setString(3, dto.getName());
			ps.setString(4, dto.getEmail());
			ps.setString(5, dto.getTel());
			ps.setString(6, dto.getAddr());
			
			int count=ps.executeUpdate();
			return count;
			
		}catch(Exception e) {
			e.printStackTrace();
			return -1; //잘못되면 음수를 돌려줌
		}finally {
			try {
				if(ps!=null)ps.close(); //null인 경우 에러가 발생하므로 미리 조건지정해줌
				if(conn!=null)conn.close();
				
			}catch(Exception e2) {
				}
			}
			
		}
	
	

}
