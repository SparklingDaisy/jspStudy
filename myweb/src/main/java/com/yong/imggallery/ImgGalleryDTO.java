package com.yong.imggallery;

public class ImgGalleryDTO {

	private int idx;
	private String id;
	private String filename;
	
	public ImgGalleryDTO() {
		
	}
			
	public ImgGalleryDTO(int idx, String id, String filename) {
		super();
		this.idx = idx;
		this.id = id;
		this.filename = filename;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	
}
