package yong.member.model;



public interface MemberDAO {
	
	int NOT_ID=1;
	int NOT_PWD=2;
	int LOGIN_OK=3;
	int ERROR=-1; //모든 인터페이스를 상속받는 구현체들이 모두 상속받는다.
	
	
	public int memberJoin(MemberDTO dto);
	public boolean idCheck(String id);
	public int loginCheck(String userid,String userpwd);
	public String getUserInfo(String id);
	
	
}
