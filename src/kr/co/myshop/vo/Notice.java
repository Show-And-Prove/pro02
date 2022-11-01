package kr.co.myshop.vo;

public class Notice {
	
	private int noticeNo;		//공지 번호
	private String noticeTitle;		//제목
	private String noticeContent;		//내용
	private String noticeAuthor;		//작성자
	private String resDate;		//작성일
	
	
	public int getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public String getNoticeAuthor() {
		return noticeAuthor;
	}
	public void setNoticeAuthor(String noticeAuthor) {
		this.noticeAuthor = noticeAuthor;
	}
	public String getResDate() {
		return resDate;
	}
	public void setResDate(String resDate) {
		this.resDate = resDate;
	}
	
}
