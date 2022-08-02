package com.yong.bean;

public class BeanTestDTO {

	private String name;
	private int age;
	private String addr;
	private String tell;
	
	public BeanTestDTO() {
		System.out.println("BeanTestDTO()생성자 호출됨!");
	}
	
	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getTell() {
		return tell;
	}

	public void setTell(String tell) {
		this.tell = tell;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	
	
}
