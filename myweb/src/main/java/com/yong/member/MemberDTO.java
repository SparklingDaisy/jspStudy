package com.yong.member;

import java.sql.*;

public class MemberDTO {

	private int idx;
	private String id;
	private String pwd;
	private String name;
	private String email;
	private String tel;
	private String addr;

	private Date joindate; 

	/*날짜를 표현해줄때 sql패키지에 들어있는 Date로 날짜를 표현해줌
	 * 자바는 캘린더 클래스로 사용 */
							
	
	public MemberDTO() {
		
	}
	
	public MemberDTO(int idx, String id, String pwd, String name, String email, String tel, String addr,
			Date joindate) {
		super();
		this.idx = idx;
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.tel = tel;
		this.addr = addr;
		this.joindate = joindate;
	}
	
	public MemberDTO(int idx,String id,String name,String email,String tel,Date joindate) {
		
		super();
		this.idx = idx;
		this.id = id;
		this.name = name;
		this.email = email;
		this.tel = tel;
		this.joindate = joindate;
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public Date getJoindate() {
		return joindate;
	}

	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}
	
	public String getValue() {
		return Value;
	}

	public void setValue(String value) {
		Value = value;
	}
	
}
