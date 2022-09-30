package yong.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AnimeController {
	
	@ModelAttribute("keywords")
	public String[] getKeywords() {
		String keywords[]= {"아기공룡 둘리","달빛천사 세일러문","심슨","학교괴담","드래곤볼"};
		return keywords;
	}
	
	@ModelAttribute("category")
	public String[] getCategory() {
		String category[]= {"한국","일본","미국"};
		return category;
	}
	
	@RequestMapping("/animeA.do")
	public ModelAndView animeA() {
		
		
		ModelAndView mav=new ModelAndView();
//		mav.addObject("keywords",getKeywords());
//		mav.addObject("category",getCategory());
		mav.setViewName("anime/animeA");
		return mav;
	}
	
	@RequestMapping("/animeB.do")
	public String animeB(Model model) {
		
		
//		model.addAttribute("keywords",getKeywords());
//		model.addAttribute("category",getCategory());
		
		return "anime/animeB";
	}

}
