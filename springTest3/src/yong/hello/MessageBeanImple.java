package yong.hello;

public class MessageBeanImple implements MessageBean {

	private String name;
	private String greeting;
	private DataOutput out;
	
	
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
	
	public DataOutput getOut() {
		return out;
	}

	public void setOut(DataOutput out) {
		this.out = out;
	}

	@Override
	public void sayHello() {
		
		String msg=name+", "+greeting+"!!";
		
		System.out.println(msg);
		
		try {
			out.output(msg);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
