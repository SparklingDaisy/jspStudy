package yong.hello;

public class MessageBeanImple implements MessageBean {
	
	private String name;
	private String greeting;
	
	public MessageBeanImple(String name) {
		super();
		this.name = name;
	}
	
	public String getGreeting() {
		return greeting;
	}

	public void setGreeting(String greeting) {
		this.greeting = greeting;
	}

	@Override
	public void sayHello() {
		
		System.out.println("==퍼포먼스 경과시간==");
		long start=System.currentTimeMillis();
		////////////////////////////////////
		
		try {
			Thread.sleep(3000);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		String str=name+", "+greeting;
		System.out.println("결과메세지:"+str);
		////////////////////////////////////
		long end=System.currentTimeMillis();
		long result=end-start;
		System.out.println("핵심구동경과시간:"+result+"m/s");
		System.out.println("핵심종료!");
		
	}

}
