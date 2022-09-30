package yong.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ViewTestController {
	
	@RequestMapping("/viewTest1.do")
	public ModelAndView viewTest1() { //스프링에서 제시하는 대표적인 반환타입
		
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("view/viewOk"); //명시적 뷰 지정방법
		return mav;
	}
	
	@RequestMapping("/viewTest2.do")
	public String viewTest2() {
		return "view/viewOk"; // 명시적 뷰 지정방법
	}
	
	@RequestMapping("/view/viewOk.do")
	public void viewTest3() { //묵시적 뷰 지정방법
	}
	
	@RequestMapping("/viewTest3.do")
	public String viewTest4() {
		return "redirect:/hello.do"; //또 다른 명령어로 이동
	}

}
