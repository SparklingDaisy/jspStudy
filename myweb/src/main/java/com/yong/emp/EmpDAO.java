package com.yong.emp;

import java.sql.*;
import java.util.*;

public class EmpDAO {
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	private ArrayList dept=new ArrayList();
	
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
	
	/**사원 모두보기 관련 메서드*/
	public void empList() {
		ArrayList<EmpDTO> list = new ArrayList<>();
		
		try {
		dbConnect();
		String sql="select * from employee order by idx desc"; //데이터베이스는 순서를 보장하지 않음
		PreparedStatement ps=conn.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
	
		if(rs.next()){
			do{
				EmpDTO emp = new EmpDTO();
				emp.setIdx(rs.getInt("idx"));
				emp.setName(rs.getString("name"));
				emp.setEmail(rs.getString("email"));
				emp.setDept(rs.getString("dept"));
				list.add(emp);
			
			}while(rs.next());

		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
				
			}catch(Exception e2){
				
			}
		}
	}


