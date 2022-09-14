package com.yong.emp.model;

import java.util.*;
import java.sql.*;

import com.yong.emp.model.EmpDTO;

public class EmpDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public EmpDAO() {
		
	}
	
	/**사원등록 관련 메서드**/
	public int empAdd(EmpDTO dto) {
		try {
			conn=com.yong.db.yongDB.getConn();
			String sql="insert into employee values(employee_idx.nextval,?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getEmail());
			ps.setString(3, dto.getDept());
			int count=ps.executeUpdate();
			return count;
			
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}finally {
			try {
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			}catch(Exception e2){
				
			}
		}
		
	}
	
	/**사원삭제 관련 메서드*/
	public int empDel(String name) { 
		
		try {
			conn=com.yong.db.yongDB.getConn();
			
			String sql="delete from employee where name=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, name);
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
	
	/**모든 사원내역 관련메서드*/
	public ArrayList<EmpDTO> empList(){
		try {
			conn=com.yong.db.yongDB.getConn();
			String sql="select * from employee order by idx desc";
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			ArrayList<EmpDTO> arr=new ArrayList<EmpDTO>();
			while(rs.next()) {
				int idx=rs.getInt("idx");
				String name=rs.getString("name");
				String email=rs.getString("email");
				String dept=rs.getString("dept");
				EmpDTO dto=new EmpDTO(idx, name, email, dept);
				
				arr.add(dto);						
			}
			return arr;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			try {
				if(ps!=null)ps.close(); //null인 경우 에러가 발생하므로 미리 조건지정해줌
				if(conn!=null)conn.close();
			}catch(Exception e2) {}
		}
	}
	
	/**사원이름 검색 관련 메서드*/
	public ArrayList<EmpDTO> empSearch(String userName) {
		
		try {
			conn=com.yong.db.yongDB.getConn();
			
			String sql="select * from employee where name=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userName);
			rs=ps.executeQuery();
			
			ArrayList<EmpDTO> arr=new ArrayList<EmpDTO>();
			
			while(rs.next()) {
				int idx=rs.getInt("idx");
				String name=rs.getString("name");
				String email=rs.getString("email");
				String dept=rs.getString("dept");
				
				EmpDTO dto=new EmpDTO(idx, name, email, dept);
				arr.add(dto);		
			}
			
			return arr;
			
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
	public ArrayList<EmpDTO> empSearchIdx(int userIdx) {
		
		try {
			conn=com.yong.db.yongDB.getConn();

			String sql="select * from employee where idx=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, userIdx);
			rs=ps.executeQuery();
			
			ArrayList<EmpDTO> arr=new ArrayList<EmpDTO>();
			
			while(rs.next()) {
				int idx=rs.getInt("idx");
				String name=rs.getString("name");
				String email=rs.getString("email");
				String dept=rs.getString("dept");
				
				EmpDTO dto=new EmpDTO(idx, name, email, dept);
				arr.add(dto);		
			}
			
			return arr;
			
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
	
	/**사원정보 수정 메서드*/
	public int empUpdate(EmpDTO dto) {
		
		try {
			conn=com.yong.db.yongDB.getConn();
	
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
