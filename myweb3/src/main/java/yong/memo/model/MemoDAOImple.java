package yong.memo.model;

import java.util.*;
import java.sql.*;

public class MemoDAOImple implements MemoDAO {
	   
	   private Connection conn;
	   private PreparedStatement ps;
	   private ResultSet rs;

	   @Override
	   public int memoWrite(MemoDTO dto) {
	      try {
	         conn=com.yong.db.yongDB.getConn();
	         String sql="insert into memo values(?,?,?)";
	         ps=conn.prepareStatement(sql);
	         ps.setInt(1, dto.getIdx());
	         ps.setString(2, dto.getWriter());
	         ps.setString(3, dto.getContent());
	         int count=ps.executeUpdate();
	         return count;
	         
	      }catch(Exception e) {
	         e.printStackTrace();
	         return -1;
	         
	      }finally {
	    	  
	         try {
	            if(ps!=null)ps.close();
	            if(conn!=null)conn.close();
	         }catch(Exception e2) {
	            e2.printStackTrace();
	         }
	      }
	   }

	}