package yong.hello;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URL;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.Resource;

public class HelloApp {

	public static void main(String[] args) {

		String configLocations[]= {"applicationContext.xml"};
		ApplicationContext factory = new ClassPathXmlApplicationContext(configLocations);
		
		MessageBean bean = (MessageBean)factory.getBean("messageBean");
		bean.sayHello();

	}
}