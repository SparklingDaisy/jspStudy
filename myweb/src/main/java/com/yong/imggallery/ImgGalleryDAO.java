package com.yong.imggallery;

import java.sql.*;
import java.util.*;
import com.oreilly.servlet.*;
import java.io.*;

public class ImgGalleryDAO {
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public ImgGalleryDAO() {
		
	}
	
	public int imgInsert(MultipartRequest mr) { //이런 방법도 있다는 것을 알려주기 위해 dto가 아닌 이걸 받아봄
		
		try {
			conn=com.yong.db.yongDB.getConn();
			String sql="insert into imggallery values(imggallery_idx.nextval,?,?)";
			ps=conn.prepareStatement(sql);
			String id=mr.getParameter("id");
			String filename=mr.getFilesystemName("upload");
			System.out.println("id="+id+"/filename"+filename);
			ps.setString(1, id);
			ps.setString(2, filename);
			int count=ps.executeUpdate();
			return count;
					
		}catch(Exception e) {
			e.printStackTrace();
			return -1;
		}finally {
			try {
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
				
			}catch(Exception e2) {}
		}
	}
	/**목록관련메서드*/
	public ArrayList<ImgGalleryDTO> imgList(){
		
		try {
			conn=com.yong.db.yongDB.getConn();
			String sql="select * from imggallery order by idx desc";
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			ArrayList<ImgGalleryDTO> arr=new ArrayList<ImgGalleryDTO>();
			while(rs.next()) {
				int idx=rs.getInt("idx");
				String id=rs.getString("id");
				String filename=rs.getString("filename");
				ImgGalleryDTO dto=new ImgGalleryDTO(idx, id, filename);
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
	/**이미지 삭제 관련 메서드*/
	public int imgDelete(ImgGalleryDTO dto,String path) {
		try {
			
			conn=com.yong.db.yongDB.getConn();
			String sql="delete from imggallery where idx=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, dto.getIdx());
			int count=ps.executeUpdate();
			///////////////////////////////
			File f=new File(path+"/imgGallery/userimg/"+dto.getFilename());
			if(f.exists()) {
				f.delete();
			}
			
			///////////////////////////////
			return count;
			
		}catch(Exception e) {
			e.printStackTrace();
			return -1;
		}finally {
			try {
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			}catch(Exception e2) {}
		}
	}

}
