package com.bitacademy.emaillist.vo;

public class EmaillistVo {
	private Long no;
	private String firstName;
	private String lastname;
	private String email;

	public Long getNo() {
		return no;
	}
	@Override
	public String toString() {
		return "EmaillistVo [no=" + no + ", firstName=" + firstName + ", lastname=" + lastname + ", email=" + email
				+ "]";
	}
	public void setNo(Long no) {
		this.no = no;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastname;
	}
	public void setLastName(String lastname) {
		this.lastname = lastname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
}