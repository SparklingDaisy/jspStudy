package yong.file.model;

import org.springframework.web.multipart.MultipartFile;

public class FileUploadDTO {
	
	private String writer;
	private MultipartFile upload;
	
	public FileUploadDTO() {
		// TODO Auto-generated constructor stub
	}

	public FileUploadDTO(String writer, MultipartFile upload) {
		super();
		this.writer = writer;
		this.upload = upload;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public MultipartFile getUpload() {
		return upload;
	}

	public void setUpload(MultipartFile upload) {
		this.upload = upload;
	}
	
	

}
