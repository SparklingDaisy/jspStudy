package yong.controller;

import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import yong.memo.model.MemoDAO;
import yong.memo.model.MemoDTO;

@Controller
@RequestMapping("/memoWrite.do")
public class MemoController {
	
	@Autowired
	private MemoDAO memoDao;
	
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView memoWriteForm() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("memo/memoForm");
		return mav;		
	}
	
	
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView memoWriteSubmit(MemoDTO dto) {
		
		int result=memoDao.memoWrite(dto);
		
		System.out.println(dto.toString());
		ModelAndView mav=new ModelAndView();
		mav.setViewName("memo/memoOK2");
		return mav;
	}
		
	
}
