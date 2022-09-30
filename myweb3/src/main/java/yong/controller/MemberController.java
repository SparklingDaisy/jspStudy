package yong.controller;

import java.lang.reflect.Method;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ExtendedModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.annotation.RequestScope;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.annotation.ModelAndViewResolver;

import yong.member.model.*;

@Controller
public class MemberController {
	
	@Autowired //웹컴퍼런트 전용 어노테이션
	private MemberDAO memberDao;
	
	   @RequestMapping(value= "/memberJoin.do", method = RequestMethod.GET)
	   public ModelAndView memberJoinForm() {
	      ModelAndView mav=new ModelAndView();
	      mav.setViewName("member/join");
	      return mav;
	   }

	
	@RequestMapping(value="/memberJoin.do", method=RequestMethod.POST)
	public ModelAndView memberJoinSubmit(@ModelAttribute("dto") MemberDTO dto) { //dto가 이미 있다라는 전제를 스프링에서 구현해줌
																				//도메인 오브젝트를 매개변수로 선언하면 다음 뷰에게 자동으로 토스해준다.
		int result=memberDao.memberJoin(dto);
		String msg=result>0?"회원가입을 축하합니다!":"회원가입에 실패하였습니다.";
		
		ModelAndView mav=new ModelAndView();
		//mav.addObject("msg",msg);
		//mav.addObject("gopage","/myweb3/index.do");
		//mav.setViewName("member/memberMsg");
		
		mav.setViewName("member/welcome");
		return mav;		
	}
	
	@RequestMapping("/idCheckForm.do")
	public ModelAndView idCheckForm() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("member/idCheck");
		return mav;
	}
	
	@RequestMapping("/idCheck.do")
	public ModelAndView idCheckSubmit(MemberDTO dto) { //String id로 받았다면, 스트링의 편의성으로 봐야한다. 폼에 있는 변수랑 같은 이름으로 선언하면 가져오게 편의성을 추가해주었다.
		boolean result=memberDao.idCheck(dto.getId());
		ModelAndView mav=new ModelAndView();
		
		if(result) {
			mav.addObject("msg",dto.getId()+"는 이미 가입되어있는 ID입니다.");
			mav.addObject("gopage","idCheckForm.do");
			mav.setViewName("member/memberMsg");
		}else {
			mav.addObject("msg",dto.getId()+"는 사용가능한 ID입니다.");
			mav.addObject("userid",dto.getId());
			mav.setViewName("member/idCheck_ok");
		}
		return mav;
	}

	@RequestMapping("/loginForm.do")
	public ModelAndView loginForm() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("member/login");
		return mav;
	}
	
	@RequestMapping("/login.do")
	public ModelAndView loginSubmit(@RequestParam(value="userid",required = false)String userid,
									@RequestParam("userpwd")String userpwd, HttpSession session,
									@RequestParam(value="saveid",required = false)String saveid,
									HttpServletResponse resp) {
		int result=memberDao.loginCheck(userid, userpwd);
		
		ModelAndView mav=new ModelAndView();
		
		if(result==memberDao.LOGIN_OK) {
			String username=memberDao.getUserInfo(userid);
			session.setAttribute("sid", userid);
			session.setAttribute("sname", username);
			
			//////////////////////////////////////////////
			if(saveid==null) {
				Cookie ck=new Cookie("saveid",userid);
				ck.setMaxAge(0);
				resp.addCookie(ck);
			}else {
				Cookie ck=new Cookie("saveid", userid);
				ck.setMaxAge(60*60*24*30);
				resp.addCookie(ck);				
			}
			//////////////////////////////////////////////
			
			mav.addObject("msg",username+"님 환영합니다!");
			mav.setViewName("member/login_ok");
			
		}else if(result==memberDao.NOT_ID||result==memberDao.NOT_PWD) {
			mav.addObject("msg","아이디 또는 비밀번호가 잘못되었습니다.");
			mav.addObject("gopage","loginForm.do");
			mav.setViewName("member/memberMsg");
		}else {
			mav.addObject("msg","검증에 알 수 없는 에러발생, 고객센터 연락바람");
			mav.addObject("gopage","loginForm.do");
			mav.setViewName("member/memberMsg");
		}
		
		return mav;
	}
	
	@RequestMapping("/logout.do")
	public ModelAndView logout(HttpServletRequest req) {
		
		HttpSession session=req.getSession();
		session.invalidate();		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("redirect:/index.do");
		return mav;
	}
}
