package kr.co.myshop.vo;

public class Custom {
	
	private String customerId;	//고객 아이디
	private String customerPw;	//고객 비밀번호
	private String customerName;	//고객 이름
	private String customerTel;		//고객 전화번호
	private String customerAddress;		//고객 주소
	private String regDate;		//가입일
	private int point;		//포인트
	private int level;		//등급
	private int visited;	//방문횟수
	
	
	public String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}
	public String getCustomerPw() {
		return customerPw;
	}
	public void setCustomerPw(String customerPw) {
		this.customerPw = customerPw;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getCustomerTel() {
		return customerTel;
	}
	public void setCustomerTel(String customerTel) {
		this.customerTel = customerTel;
	}
	public String getCustomerAddress() {
		return customerAddress;
	}
	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public int getVisited() {
		return visited;
	}
	public void setVisited(int visited) {
		this.visited = visited;
	}
	
}
