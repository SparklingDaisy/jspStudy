package mae.hello;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

import mae.hello.MessageBean;

public class HelloApp {

	public static void main(String[] args) {
		
		Resource resoure=new ClassPathResource("applicationContext.xml");
		BeanFactory factory=new XmlBeanFactory(resoure);	//클래스를 저장하여 보관	
				
		MessageBean bean=(MessageBean)factory.getBean("messageBean");
		bean.sayHello("spring");
	}
}
