package com.kh.respect.meet.model.vo;

import java.util.Date;

public class Meet {
	
	private int meetNo;
	private String userId;
	private String area;
	private String title;
	private String content;
	private Date meetDate;
	private String time;
	private String address;
	private int hitsCount;
	private int replyCount;
	private Date writeDate;
	
	public Meet() {}

	public Meet(int meetNo, String userId, String area, String title, String content, Date meetDate, String time,
			String address, int hitsCount, int replyCount, Date writeDate) {
		super();
		this.meetNo = meetNo;
		this.userId = userId;
		this.area = area;
		this.title = title;
		this.content = content;
		this.meetDate = meetDate;
		this.time = time;
		this.address = address;
		this.hitsCount = hitsCount;
		this.replyCount = replyCount;
		this.writeDate = writeDate;
	}

	public int getMeetNo() {
		return meetNo;
	}

	public void setMeetNo(int meetNo) {
		this.meetNo = meetNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getMeetDate() {
		return meetDate;
	}

	public void setMeetDate(Date meetDate) {
		this.meetDate = meetDate;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getHitsCount() {
		return hitsCount;
	}

	public void setHitsCount(int hitsCount) {
		this.hitsCount = hitsCount;
	}

	public int getReplyCount() {
		return replyCount;
	}

	public void setReplyCount(int replyCount) {
		this.replyCount = replyCount;
	}

	public Date getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}

	@Override
	public String toString() {
		return "Meet [meetNo=" + meetNo + ", userId=" + userId + ", area=" + area + ", title=" + title + ", content="
				+ content + ", meetDate=" + meetDate + ", time=" + time + ", address=" + address + ", hitsCount="
				+ hitsCount + ", replyCount=" + replyCount + ", writeDate=" + writeDate + "]";
	}
	
	
	
	
	
}
