package product;

public class BuyingDTO {
	private int b_id;
	private int p_id;
	private String p_name;
	private String p_img;
	private String p_price;
	private int p_quantity;
	private String b_time;
	private String buycode;
	private int total;
	private String b_name;
	

	public BuyingDTO() {
		super();
	}

	public BuyingDTO(int p_id, String p_name, String p_img, String p_price, int p_quantity, String b_time,
			String buycode) {
		super();
		this.p_id = p_id;
		this.p_name = p_name;
		this.p_img = p_img;
		this.p_price = p_price;
		this.p_quantity = p_quantity;
		this.b_time = b_time;
		this.buycode = buycode;
	}

	
	
	public String getB_name() {
		return b_name;
	}

	public void setB_name(String b_name) {
		this.b_name = b_name;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getB_id() {
		return b_id;
	}

	public void setB_id(int b_id) {
		this.b_id = b_id;
	}

	public int getP_id() {
		return p_id;
	}

	public void setP_id(int p_id) {
		this.p_id = p_id;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getP_img() {
		return p_img;
	}

	public void setP_img(String p_img) {
		this.p_img = p_img;
	}

	public String getP_price() {
		return p_price;
	}

	public void setP_price(String p_price) {
		this.p_price = p_price;
	}

	public int getP_quantity() {
		return p_quantity;
	}

	public void setP_quantity(int p_quantity) {
		this.p_quantity = p_quantity;
	}

	public String getB_time() {
		return b_time;
	}

	public void setB_time(String b_time) {
		this.b_time = b_time;
	}

	public String getBuycode() {
		return buycode;
	}

	public void setBuycode(String buycode) {
		this.buycode = buycode;
	}

	@Override
	public String toString() {
		return "BuyingDTO [p_id=" + p_id + ", p_name=" + p_name + ", p_img=" + p_img + ", p_price=" + p_price
				+ ", p_quantity=" + p_quantity + ", b_time=" + b_time + ", buycode=" + buycode + "]";
	}

}
