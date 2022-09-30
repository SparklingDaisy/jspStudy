package yong.Hello3;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

public class HelloApp {

	public static void main(String[] args) {
		
		Resource resoure=new ClassPathResource("aplicationContext.xml");
		BeanFactory factory=new XmlBeanFactory(resoure);		
				
		MessageBean bean=(MessageBean)factory.getBean("messageBean");
		bean.sayHello("spring");
	}

}
