package com.yong.member;

import java.sql.*;
import java.sql.Date;
import java.util.*;

import com.yong.member.MemberDTO;

public class MemberDAO {
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public static final int NOT_ID=1;
	public static final int NOT_PWD=2;
	public static final int LOGIN_OK=3;
	public static final int ERROR=-1;
	
	public MemberDAO() {
	
	}
	
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
		
	
	/**회원가입 메서드*/
	public int memberJoin(MemberDTO dto) {
		try {
			conn=com.yong.db.yongDB.getConn();
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
	
	/**ID중복검사 메서드*/
	public boolean idCheck(String id) {
		
		try {
			conn=com.yong.db.yongDB.getConn();
			String sql="select id from jsp_member where id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, id);
			rs=ps.executeQuery();
			return rs.next();				
			
		}catch(Exception e) {
			e.printStackTrace();
			return false;

		}finally {
			try {
				if(rs!=null)rs.close();
				if(ps!=null)ps.close(); //null인 경우 에러가 발생하므로 미리 조건지정해줌
				if(conn!=null)conn.close();
				
			}catch(Exception e2) {
				}
			}
			
		}
	
	/**회원정보검색 메서드*/
	public ArrayList<MemberDTO> memberFind(String fkey,String fvalue){
		
		try {
			conn=com.yong.db.yongDB.getConn();
			String sql="select * from jsp_member where "+fkey+"=?"; // ?인파라미터는 밸류에만 적용가능
			ps=conn.prepareStatement(sql);
			ps.setString(1, fvalue);
			rs=ps.executeQuery();
			
			ArrayList<MemberDTO> arr=new ArrayList<MemberDTO>();
			while(rs.next()) {
				int idx=rs.getInt("idx");
				String id=rs.getString("id");
				String pwd=rs.getString("pwd");
				String name=rs.getString("name");
				String email=rs.getString("email");
				String tel=rs.getString("tel");
				String addr=rs.getString("addr");
				java.sql.Date joindate=rs.getDate("joindate");
				
				MemberDTO dto=new MemberDTO(idx, id, pwd, name, email, tel, addr, joindate);
				arr.add(dto);
			}
			return arr;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			try {
				if(rs!=null)rs.close();
				if(ps!=null)ps.close(); 
				if(conn!=null)conn.close();
			}catch(Exception e2) {}
		}
	}
	/**로그인 검증 관련 메서드*/	
	public int loginCheck(String userid, String userpwd) {
		
		try {
			conn=com.yong.db.yongDB.getConn();
			String sql="select pwd from jsp_member where id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs=ps.executeQuery();
			
			if(rs.next()) {
				String dbpwd=rs.getString(1);
				if(dbpwd.equals(userpwd)) {
					return LOGIN_OK;
				}else {
					return NOT_PWD;
				}
			}else {
				return NOT_ID;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
			return ERROR;
		}finally {
			try {
				if(rs!=null)rs.close();
				if(ps!=null)ps.close(); //null인 경우 에러가 발생하므로 미리 조건지정해줌
				if(conn!=null)conn.close();
				
			}catch(Exception e2) {
				}
			}
			
		}
	
	/**사용자 정보 추출 관련메서드*/
	public String getUserInfo(String userid) {
		
		try {
			conn=com.yong.db.yongDB.getConn();
			String sql="select name from jsp_member where id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1,userid);
			rs=ps.executeQuery();
			rs.next();
			return rs.getString(1);
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}finally {
			try {
				if(rs!=null)rs.close();
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			}catch(Exception e2) {
				
			}
		}
	}


}
