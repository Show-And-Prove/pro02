package kr.co.myshop.vo;

public class Parsel {

	private int parselNo;		//배송코드
	private String parselAddress;		//배송지
	private String customerTel;			//회원전화번호
	private String parselCompany;		//배송회사
	private String parselTel;		//배송기사 전화번호
	private int parselState;		//배송상태
	
	
	public int getParselNo() {
		return parselNo;
	}
	public void setParselNo(int parselNo) {
		this.parselNo = parselNo;
	}
	public String getParselAddress() {
		return parselAddress;
	}
	public void setParselAddress(String parselAddress) {
		this.parselAddress = parselAddress;
	}
	public String getCustomerTel() {
		return customerTel;
	}
	public void setCustomerTel(String customerTel) {
		this.customerTel = customerTel;
	}
	public String getParselCompany() {
		return parselCompany;
	}
	public void setParselCompany(String parselCompany) {
		this.parselCompany = parselCompany;
	}
	public String getParselTel() {
		return parselTel;
	}
	public void setParselTel(String parselTel) {
		this.parselTel = parselTel;
	}
	public int getParselState() {
		return parselState;
	}
	public void setParselState(int parselState) {
		this.parselState = parselState;
	}
	
	
}
