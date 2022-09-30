package yong.file.model;

import java.util.*;

public class FileDTO {
	
	private List<FileUploadDTO> fdto;
	
	public FileDTO() {
		// TODO Auto-generated constructor stub
	}

	public FileDTO(List<FileUploadDTO> fdto) {
		super();
		this.fdto = fdto;
	}

	public List<FileUploadDTO> getFdto() {
		return fdto;
	}

	public void setFdto(List<FileUploadDTO> fdto) {
		this.fdto = fdto;
	}
	
	

}
