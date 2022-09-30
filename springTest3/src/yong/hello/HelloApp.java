package yong.hello;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

public class HelloApp {

	public static void main(String[] args) {
		
		Resource resource = new ClassPathResource("applicationContext.xml");
		BeanFactory factory=new XmlBeanFactory(resource); //밑줄은 더 좋은 기능이 나왔으니 그거 쓰라는 뜻
		MessageBean bean=(MessageBean)factory.getBean("messageBean");
		bean.sayHello();
	}

}
