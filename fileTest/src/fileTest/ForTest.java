package fileTest;

import java.util.*;

public class ForTest {

	public static void main(String[] args) {
	
//		String fruit[] = {"사과","배","포도","딸기"};
//		
//		for(int i=0;i<fruit.length;i++) {
//			System.out.println(fruit[i]);
//		}
//		System.out.println("--------------------------");
//		
//		for(String temp:fruit) { //내가 가진 집합객체를 접근해서 모두 출력만함
//			System.out.println(temp);
//		}

		String str="사과,배,포도,딸기";
		
		StringTokenizer st=new StringTokenizer(str,",");
		while(st.hasMoreElements()) {
			System.out.println();
		}
	}
}