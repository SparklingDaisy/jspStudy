package com.yong.emp;

import java.sql.*;
import java.util.*;

public class EmpDAO {
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public EmpDAO() {
		System.out.println("EmpDAO()생성자 호출됨~");
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
	
	/**사원등록 관련 메서드*/
	public int empAdd(EmpDTO dto) {
		try {
			dbConnect();
			String sql="insert into employee values(employee_idx.nextval,?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getEmail());
			ps.setString(3, dto.getDept());
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
	
	/**사원삭제 관련 메서드*/
	public int empDel(EmpDTO dto) { //사실 name만 받아오는게 더 효율적
		try {
			dbConnect();
			String sql="delete from employee where name=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, dto.getName());
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
	
	/**모든 사원내역 보기 메서드*/
	public EmpDTO[] empList() {
		
		try {
			dbConnect();
			String sql="select * from employee order by idx desc";
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			
			Vector<EmpDTO> v=new Vector<EmpDTO>();
			while(rs.next()) {
				int idx=rs.getInt("idx");
				String name=rs.getString("name");
				String email=rs.getString("email");
				String dept=rs.getString("dept");
				
				EmpDTO dto=new EmpDTO(idx, name, email, dept);
				v.add(dto);		
				
			}
			
			EmpDTO dtos[]=new EmpDTO[v.size()];
			v.copyInto(dtos);
			return dtos;
			
		}catch(Exception e) {
			e.printStackTrace();
			return null; //잘못 되었을 경우 값이 없다~
		}finally {
			try {
				if(rs!=null)rs.close();
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			}catch(Exception e2) {}
		}
		
	}
	
	/**사원이름 검색 관련 메서드*/
	public EmpDTO[] empSearch(EmpDTO dto) {
		
		try {
			
			dbConnect();
			String sql="select * from employee where name=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, dto.getName());
			rs=ps.executeQuery();
			
			Vector<EmpDTO> v=new Vector<EmpDTO>();
			while(rs.next()) {
				int idx=rs.getInt("idx");
				String name=rs.getString("name");
				String email=rs.getString("email");
				String dept=rs.getString("dept");
				
				EmpDTO dtoArr=new EmpDTO(idx, name, email, dept);
				v.add(dtoArr);		
				
			}
			
			EmpDTO dtos[]=new EmpDTO[v.size()];
			v.copyInto(dtos);
			return dtos;
			
		}catch(Exception e) {
			e.printStackTrace();
			return null; //잘못 되었을 경우 값이 없다~
		}finally {
			try {
				if(rs!=null)rs.close();
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			}catch(Exception e2) {}
		}
		
	}
	
	/**사원번호로 검색 관련 메서드*/
	public EmpDTO[] empSearchIdx(EmpDTO dto) {
		
		try {
			dbConnect();
			String sql="select * from employee where idx=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, dto.getIdx());
			rs=ps.executeQuery();
			
			Vector<EmpDTO> v=new Vector<EmpDTO>();
			while(rs.next()) {
				int idx=rs.getInt("idx");
				String name=rs.getString("name");
				String email=rs.getString("email");
				String dept=rs.getString("dept");
				
				EmpDTO dto2=new EmpDTO(idx, name, email, dept);
				v.add(dto2);		
				
			}
			
			EmpDTO dtos[]=new EmpDTO[v.size()];
			v.copyInto(dtos);
			return dtos;
			
		}catch(Exception e) {
			e.printStackTrace();
			return null; //잘못 되었을 경우 값이 없다~
		}finally {
			try {
				if(rs!=null)rs.close();
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			}catch(Exception e2) {}
		}
		
	}
	
	/**사원정보 수정 관련 메서드*/
	public int empUpdate(EmpDTO dto) {
		
		try {
			dbConnect();
			String sql="update employee set name=?,email=?,dept=? where idx=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1,dto.getName());
			ps.setString(2,dto.getEmail());
			ps.setString(3,dto.getDept());
			ps.setInt(4, dto.getIdx());
			int count=ps.executeUpdate();
			return count;
			
			
		}catch(Exception e) {
			e.printStackTrace();
			return -1; //잘못 되었을 경우 값이 없다~
		}finally {
			try {
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			}catch(Exception e2) {}
		}
		
	}
	

}