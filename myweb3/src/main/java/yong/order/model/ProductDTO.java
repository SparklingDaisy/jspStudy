package yong.order.model;

public class ProductDTO {
	
	private String productname;
	private int num;
	private String bigo;
	
	public ProductDTO() {

	}

	public ProductDTO(String productname, int num, String bigo) {
		super();
		this.productname = productname;
		this.num = num;
		this.bigo = bigo;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getBigo() {
		return bigo;
	}

	public void setBigo(String bigo) {
		this.bigo = bigo;
	}
	
	

}
