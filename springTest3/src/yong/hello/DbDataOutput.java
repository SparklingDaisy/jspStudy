package yong.hello;

public class DbDataOutput implements DataOutput {

	@Override
	public void output(String msg) throws Exception {
		System.out.println("[DB연동 시작]");
		System.out.println("[DB에 삽입할 데이터:"+msg+"]");
		System.out.println("[DB연동 종료!!]");
	}

}
