package kh.sellermoon.member.vo;

import lombok.Data;
import lombok.Getter;

@Data
public class MemberVO {
	
	  private int    member_no       = 0;    
	  private String member_address  = ""; 
	  private String member_method   = ""; 
	  private String member_level    = ""; 
	  private String member_password = ""; 
	  private String member_name     = ""; 
	  private String member_phone    = ""; 
	  private String member_birth    = ""; 
	  private String member_zipcode  = ""; 
	  private String member_email    = ""; 
	  private String member_date    = "";
	  private String member_address_detail    = "";
	  private String member_code    = "";
	  private String member_recommend    = "";
	  
	 private String id;
	  
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public String getMember_address() {
		return member_address;
	}
	public void setMember_address(String member_address) {
		this.member_address = member_address;
	}
	public String getMember_method() {
		return member_method;
	}
	public void setMember_method(String member_method) {
		this.member_method = member_method;
	}
	public String getMember_level() {
		return member_level;
	}
	public void setMember_level(String member_level) {
		this.member_level = member_level;
	}
	public String getMember_password() {
		return member_password;
	}
	public void setMember_password(String member_password) {
		this.member_password = member_password;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_phone() {
		return member_phone;
	}
	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}
	public String getMember_birth() {
		return member_birth;
	}
	public void setMember_birth(String member_birth) {
		this.member_birth = member_birth;
	}
	public String getMember_zipcode() {
		return member_zipcode;
	}
	public void setMember_zipcode(String member_zipcode) {
		this.member_zipcode = member_zipcode;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getMember_date() {
		return member_date;
	}
	public void setMember_date(String member_date) {
		this.member_date = member_date;
	}
	public String getMember_address_detail() {
		return member_address_detail;
	}
	public void setMember_address_detail(String member_address_detail) {
		this.member_address_detail = member_address_detail;
	}
	public String getMember_code() {
		return member_code;
	}
	public void setMember_code(String member_code) {
		this.member_code = member_code;
	}
	public String getMember_recommend() {
		return member_recommend;
	}
	public void setMember_recommend(String member_recommend) {
		this.member_recommend = member_recommend;
	}
	@Override
	public String toString() {
		return "MemberVO [member_no=" + member_no + ", member_address=" + member_address + ", member_method="
				+ member_method + ", member_level=" + member_level + ", member_password=" + member_password
				+ ", member_name=" + member_name + ", member_phone=" + member_phone + ", member_birth=" + member_birth
				+ ", member_zipcode=" + member_zipcode + ", member_email=" + member_email + ", member_date="
				+ member_date + ", member_address_detail=" + member_address_detail + ", member_code=" + member_code
				+ ", member_recommend=" + member_recommend + "]";
	}
}
