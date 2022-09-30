package yong.order.model;

import java.util.*;

public class OrderDTO {
	
	private List<ProductDTO> pdto;
	private MarketDTO mdto;
	
	public OrderDTO() {
		// TODO Auto-generated constructor stub
	}

	public OrderDTO(List<ProductDTO> pdto, MarketDTO mdto) {
		super();
		this.pdto = pdto;
		this.mdto = mdto;
	}

	public List<ProductDTO> getPdto() {
		return pdto;
	}

	public void setPdto(List<ProductDTO> pdto) {
		this.pdto = pdto;
	}

	public MarketDTO getMdto() {
		return mdto;
	}

	public void setMdto(MarketDTO mdto) {
		this.mdto = mdto;
	}
	
	
	
	

}
