package yong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import yong.bbs.model.BbsDAO;
import yong.bbs.model.BbsDTO;
import yong.bbs.model.BbsService;

import java.util.*;

@Controller
public class BbsController {
	
	@Autowired
	private BbsService bbsService;
	
	@RequestMapping("/bbsList.do")
	public ModelAndView bbsList(
			@RequestParam(value="cp",defaultValue = "1")int cp) {
		
		int totalCnt=bbsService.bbsTotalCnt();
		int listSize=5;
		int pageSize=5;
		String pageStr=yong.page.PageModule.makePage("bbsList.do", totalCnt, listSize, pageSize, cp);
		
		List<BbsDTO> list=bbsService.bbsList(cp,listSize);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list",list);
		mav.addObject("pageStr",pageStr);
		mav.setViewName("bbs/bbsList");
		return mav;
	}
	
	@RequestMapping(value="/bbsWrite.do", method = RequestMethod.GET)
	public String bbsWriteForm() {
		return "bbs/bbsWrite";
	}

	
	@RequestMapping(value="/bbsWrite.do",method = RequestMethod.POST)
	public ModelAndView bbsWriteSubmit(BbsDTO dto) {
		int result=bbsService.bbsWrite(dto);
		String msg=result>0?"게시글 작성 성공":"게시글 작성 실패";
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg",msg);
		mav.setViewName("bbs/bbsMsg");
		return mav;
	}
	
	@RequestMapping("/bbsContent.do")
	public ModelAndView bbsContent(
			@RequestParam(value="idx",defaultValue="0")int idx) {
		BbsDTO dto=bbsService.bbsContent(idx);
		
		ModelAndView mav=new ModelAndView();
		if(dto==null) {
			mav.addObject("msg","잘못된 접근 또는 삭제된 게시글입니다.");
			mav.setViewName("bbs/bbsMsg");
		}else {
			mav.addObject("dto",dto);
			mav.setViewName("bbs/bbsContent");
		}
		return mav;
	}
	

}
