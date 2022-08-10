package fileTest;

import java.io.*;

public class FileTest {

	public static void main(String[] args) {

		File f=new File("c:/student_java/lib/ojdbc6.jar");
		
		System.out.println("f야 있니?"+f.exists());
		System.out.println("f야 너 폴더니?"+f.isDirectory());
		System.out.println("f야 너 파일이니?"+f.isFile());
		System.out.println("f야 너 이름이 뭐니?"+f.getName());
		System.out.println("f야 너 경로가 뭐니?"+f.getPath());
		System.out.println("f야 너 용량이 어떻게 되니?"+f.length()/1024/1024); //키로바이트/메가바이트/기가바이트/테라바이트
		
		File f2=new File("c:/student_java");
		System.out.println("f2야 너 있니?"+f2.exists());
		System.out.println("f2야 너 폴더니?"+f2.isDirectory());
		System.out.println("f2야 너 파일이니?"+f2.isFile());

		File files[]=f2.listFiles();
		for(int i=0;i<files.length;i++) {
			String type=files[i].isFile()?"[File]\t":"[DIR]\t";
			long len=files[i].length();
			String str=files[i].isFile()?"("+len+"Byte)":"";
			System.out.println(type+files[i].getName()+str);
		}
	}

}
