package com.yong.scope;

public class ScopeTest {

	private int count;
	
	public ScopeTest() {
		count=0;
		System.out.println("ScopeTest() 객체 생성됨!!");
	}

	public int getCount() {
		System.out.println("현재 count의 값:"+count);
		return count;
	}

	public void setCount(int count) {
		this.count += count;
		System.out.println("새로운 "+count+"값이 입력되고"+this.count+"가 누적됨.");
	}
}
