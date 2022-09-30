package yong.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import yong.file.model.FileDTO;
import yong.file.model.FileUploadDTO;

import java.io.*;

@Controller
public class FileManagerController {
	
	/**파일 복사 관련 메서드*/
	public void copyInto(String writer,MultipartFile upload) {
		
		System.out.println("작성자:"+writer);
		System.out.println("파일명:"+upload.getOriginalFilename());
		
		try {
			byte bytes[]=upload.getBytes(); //원본
			File f=new File("c:/student_java/upload/"+upload.getOriginalFilename()); //복사대상자 지정
			FileOutputStream fos = new FileOutputStream(f);
			fos.write(bytes);; //복사 행위
			fos.close();
			
		} catch (IOException e) {
			e.printStackTrace();			
		}
		
	}

	@RequestMapping("/fileUploadForm.do")
	public String fileUploadForm() {
		return "file/fileUpload";
	}
	
	@RequestMapping("/fileUpload1.do")
	public String fileUpload1(@RequestParam("writer")String writer,@RequestParam("upload")MultipartFile upload) {
		
		System.out.println("작성자:"+writer);
		System.out.println("파일명:"+upload.getOriginalFilename());
		System.out.println("파일용량:"+upload.getSize()+"byte");
		
		copyInto(writer,upload);
		
		return "file/fileOk";		
	}
	
	@RequestMapping("/fileUpload2.do")
	public String fileUpload2(MultipartHttpServletRequest req) {
		
		String writer=req.getParameter("writer");
		MultipartFile upload=req.getFile("upload");
		copyInto(writer,upload);
		
		return "file/fileOk";
	}
	
	@RequestMapping("/fileUpload3.do")
	public String fileUpload3(FileUploadDTO dto) {
		copyInto(dto.getWriter(),dto.getUpload());
		return "file/fileOk";
	}
	
	@RequestMapping("/fileUpload4.do")
	public String fileUpload4(MultipartHttpServletRequest req) {
		
		String writer=req.getParameter("writer");
		MultipartFile upload=req.getFile("upload");
		MultipartFile upload2=req.getFile("upload2");
		MultipartFile upload3=req.getFile("upload3");
		copyInto(writer,upload);
		copyInto(writer,upload2);
		copyInto(writer,upload3);
		return "file/fileOk";		
	}
	
	@RequestMapping("/fileDownList.do")
	public ModelAndView fileDownList() {
		
		File f=new File("c:/student_java/upload/");
		File files[]=f.listFiles();
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("fileList",files);
		mav.setViewName("file/fileList");
		return mav;		
	}
	
	@RequestMapping("/fileDown.do")
	public ModelAndView fileDown(@RequestParam("filename")String filename) {
		File f=new File("c:/student_java/upload/"+filename);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("downloadFile",f);
		mav.setViewName("yongDown");
		return mav;
	}
	///////////////////////////////////////////////////////////////
	
	public void copyInto2(File f,MultipartFile upload) {
		
		
		try {
			byte bytes[]=upload.getBytes(); //원본
			FileOutputStream fos = new FileOutputStream(f);
			fos.write(bytes);; //복사 행위
			fos.close();
			
		} catch (IOException e) {
			e.printStackTrace();			
		}
		
	}
	
	/**이미지 리스트진입 메서드*/
	@RequestMapping("/imgList.do")
	public ModelAndView imgList(HttpServletRequest req) {
		
		String path=req.getRealPath("/imgbbs");
		File f=new File(path);
		File files[]=f.listFiles();
		ModelAndView mav=new ModelAndView();
		mav.addObject("files",files);
		mav.setViewName("file/imgList");
		return mav;
	}
	
	@RequestMapping("/uploadForm.do")
	public String uploadForm() {
		return "file/uploadForm";
	}
	
	@RequestMapping("/imgUpload.do")
	public String imgUpload(HttpServletRequest req,
							@RequestParam("img")MultipartFile img) {
		
		String path=req.getRealPath("/imgbbs/");
		String filename=img.getOriginalFilename();
		File f=new File(path+filename);
		copyInto2(f, img);
		return "file/imgUploadOk";
	}
}
