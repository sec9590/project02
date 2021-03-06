package waybill;

public class WaybillDTO {
	private int w_id;
	private int o_id;
	private String o_name;
	private String o_tel;
	private String o_address;
	private String w_waycode;
	private String o_time;
	private String w_time;
	private int count;
	private String w_name;
	
	public WaybillDTO() {
	}
	
	
	public WaybillDTO(int w_id, int o_id, String o_name, String o_tel, String o_address, String w_waycode,
			String o_time, String w_time) {
		this.w_id = w_id;
		this.o_id = o_id;
		this.o_name = o_name;
		this.o_tel = o_tel;
		this.o_address = o_address;
		this.w_waycode = w_waycode;
		this.o_time = o_time;
		this.w_time = w_time;
	}







	public String getW_name() {
		return w_name;
	}


	public void setW_name(String w_name) {
		this.w_name = w_name;
	}


	public int getCount() {
		return count;
	}


	public void setCount(int count) {
		this.count = count;
	}


	public int getW_id() {
		return w_id;
	}

	public void setW_id(int w_id) {
		this.w_id = w_id;
	}

	public int getO_id() {
		return o_id;
	}

	public void setO_id(int o_id) {
		this.o_id = o_id;
	}

	public String getO_name() {
		return o_name;
	}

	public void setO_name(String o_name) {
		this.o_name = o_name;
	}

	public String getO_tel() {
		return o_tel;
	}

	public void setO_tel(String o_tel) {
		this.o_tel = o_tel;
	}

	public String getO_address() {
		return o_address;
	}

	public void setO_address(String o_address) {
		this.o_address = o_address;
	}

	public String getO_time() {
		return o_time;
	}

	public void setO_time(String o_time) {
		this.o_time = o_time;
	}

	public String getW_time() {
		return w_time;
	}

	public void setW_time(String w_time) {
		this.w_time = w_time;
	}
	
	

	public String getW_waycode() {
		return w_waycode;
	}


	public void setW_waycode(String w_waycode) {
		this.w_waycode = w_waycode;
	}


	@Override
	public String toString() {
		return "WaybillDTO [w_id=" + w_id + ", o_id=" + o_id + ", o_name=" + o_name + ", o_tel=" + o_tel
				+ ", o_address=" + o_address + ", w_waycode=" + w_waycode + ", o_time=" + o_time + ", w_time=" + w_time
				+ "]";
	}	

}