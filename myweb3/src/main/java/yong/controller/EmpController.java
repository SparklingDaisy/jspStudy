package yong.controller;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import yong.emp.model.EmpDAO;
import yong.emp.model.EmpDTO;
import java.util.*;

@Controller
public class EmpController {
	
	@Autowired
	private EmpDAO empDao;
	
	@RequestMapping("/emp.do")
	public String emp() {
		return "emp/emp";
	}

	@RequestMapping("/empAdd.do")
	public ModelAndView empAdd(EmpDTO dto) {
		int result=empDao.empAdd(dto);
		String msg=result>0?"사원등록성공(mybatis)":"사원등록실패(mybatis)";
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg",msg);
		mav.setViewName("emp/empMsg");
		return mav;
	}
	
	@RequestMapping("/empDel.do")
	public String empDel(@RequestParam("name")String name,
			ModelMap model) {
		int result=empDao.empDel(name);
		String msg=result>0?"사원삭제성공(mybatis)":"사원삭제실패(mybatis)";
		model.addAttribute("msg",msg);
		return "emp/empMsg";
	}
	
	@RequestMapping("/empList.do")
	public ModelAndView empList() {
		List<EmpDTO> list=empDao.empList();
		ModelAndView mav=new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("yongJson");
		return mav;
	}
	
	@RequestMapping("/empSearchList.do")
	public ModelAndView empSearchList(@RequestParam("name")String name) {
		List<EmpDTO> Search=empDao.empSearchList(name);
		ModelAndView mav=new ModelAndView();
		mav.addObject("Search",Search);
		mav.setViewName("emp/empSearchList");
		return mav;
	}
	
	@RequestMapping("/empInfo.do")
	public ModelAndView empSearchIdx(@RequestParam("idx")String idx){
		List<EmpDTO> idxList=empDao.empSearchIdx(idx);
		ModelAndView mav=new ModelAndView();
		mav.addObject("idxList",idxList);
		mav.setViewName("emp/empIdxList");
		return mav;
	}
	
	@RequestMapping("/empUpdate.do")
	public ModelAndView empUpdate(EmpDTO dto) {
		int result=empDao.empUpdate(dto);
		String msg=result>0?"정보변경성공(mybatis)":"정보변경실패(mybatis)";
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg",msg);
		mav.setViewName("emp/empMsg");
		return mav;
	}
	
	@RequestMapping("/jsonTest.do")
	public String jsontTest(String jsonData) {
		JSONObject jobj=new JSONObject(jsonData);
		System.out.println("이름"+jobj.get("name"));
		System.out.println("나이"+jobj.get("age"));
		System.out.println("주소"+jobj.get("addr"));
		return "hello";
	}
}
