package yong.member.model;

import org.springframework.stereotype.Controller;
import java.sql.*;
import java.util.*;

import yong.memo.model.MemoDAO;
import yong.memo.model.MemoDTO;

@Controller
public class MemberDAOImple implements MemberDAO {
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	 @Override
	   public int memberJoin(MemberDTO dto) {

	      try {
	          conn=com.yong.db.yongDB.getConn();
	            String sql="insert into jsp_member values(jsp_member_idx.nextval,?,?,?,?,?,?,sysdate)";
	            ps = conn.prepareStatement(sql);
	            ps.setString(1, dto.getId());
	            ps.setString(2, dto.getPwd());
	            ps.setString(3, dto.getName());
	            ps.setString(4, dto.getEmail());
	            ps.setString(5, dto.getTel());
	            ps.setString(6, dto.getAddr());
	            int count = ps.executeUpdate();
	            return count;
	            
	      }catch(Exception e) {
	         e.printStackTrace();
	         return ERROR;
	         
	      }finally {
	    	  
	         try {
	            if(ps!=null)ps.close();
	            if(conn!=null)conn.close();
	            
	         }catch(Exception e2) {
	            e2.printStackTrace();
	         }
	      }
	   }
	 
	 public boolean idCheck(String id) {
		 
		 try {
			 conn=com.yong.db.yongDB.getConn();
			 String sql="select id from jsp_member where id=?";
			 ps=conn.prepareStatement(sql);
			 ps.setString(1, id);
			 rs=ps.executeQuery();
			 return rs.next();			 
			 
		} catch (Exception e) {
			e.printStackTrace();
			return false;
			
		}finally {
			
			try {
				if(rs!=null)rs.close();
	            if(ps!=null)ps.close();
	            if(conn!=null)conn.close();
	            
			} catch (Exception e2) {
				
			}
		}
	 }
	 
	 @Override
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
			
		}catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}finally {
			try {
				if(rs!=null)rs.close();
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {

			}
		}
	}
	 
	 @Override
	public String getUserInfo(String id) {
		 try {
			 conn=com.yong.db.yongDB.getConn();
			 String sql="select name from jsp_member where id=?";
			 ps=conn.prepareStatement(sql);
			 ps.setString(1, id);
			 rs=ps.executeQuery();
			 rs.next();
			 String name=rs.getString(1);
			 return name;
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			try {
				if(rs!=null)rs.close();
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {
				
			}
		}
	}


}
