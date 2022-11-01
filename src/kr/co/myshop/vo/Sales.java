package kr.co.myshop.vo;

public class Sales {

	private int saleNo;		//판매번호
	private String customerId;		//구매자 아이디
	private String productNo;		//상품 번호
	private int amount;		//수량
	private String saleDate;		//판매날짜
	private int parselNo;		//송장번호
	private int salePayNo;		//결제번호
	public int getSaleNo() {
		return saleNo;
	}
	public void setSaleNo(int saleNo) {
		this.saleNo = saleNo;
	}
	public String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}
	public String getProductNo() {
		return productNo;
	}
	public void setProductNo(String productNo) {
		this.productNo = productNo;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getSaleDate() {
		return saleDate;
	}
	public void setSaleDate(String saleDate) {
		this.saleDate = saleDate;
	}
	public int getParselNo() {
		return parselNo;
	}
	public void setParselNo(int parselNo) {
		this.parselNo = parselNo;
	}
	public int getSalePayNo() {
		return salePayNo;
	}
	public void setSalePayNo(int salePayNo) {
		this.salePayNo = salePayNo;
	}


}
