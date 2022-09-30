package yong.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ParamController {
	
	@RequestMapping("/paramTest.do")
	public ModelAndView paramTest1(
			@RequestParam(value = "str", required = false) String str,
			@RequestParam(value = "idx", defaultValue = "1") int idx) {
		
		System.out.println("str="+str);
		System.out.println("idx="+idx);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("param/paramOK");
		return mav;
	}
	
	@RequestMapping("/cookieView.do")
	public ModelAndView cookieMake(@CookieValue(value = "saveid", defaultValue = "noId")String saveid) {
		
		System.out.println("saveid="+saveid);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("param/paramOK");
		return mav;
		
	}
	
	@RequestMapping("/cookieMake.do")
	public ModelAndView cookieMake(HttpServletResponse resp) {
		
		Cookie ck=new Cookie("saveid","hong");
		ck.setMaxAge(60*3);
		resp.addCookie(ck);
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("param/paramOK");
		return mav;
	}
	
	@RequestMapping("sessionView.do")
	public ModelAndView sessionView(HttpSession session) { //스프링 세션
		
		String name=(String)session.getAttribute("name");
		System.out.println("세션에 저장된 이름:"+name);
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("param/paramOK");
		return mav;		
	}
	
	@RequestMapping("/sessionMake.do")
	public ModelAndView sessionMake(HttpServletRequest req) { //리퀘스트로 우회하여 세션사용방법(타 프레임워크)
		
		HttpSession session = req.getSession();
		session.setAttribute("name", "홍길동");		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("param/paramOK");
		return mav;
	}

}