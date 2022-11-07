package kh.sellermoon.member.vo;

import lombok.Data;

@Data
public class PointVO {
	
	  public int getPoint_no() {
		return point_no;
	}
	public void setPoint_no(int point_no) {
		this.point_no = point_no;
	}
	public String getPoint_date() {
		return point_date;
	}
	public void setPoint_date(String point_date) {
		this.point_date = point_date;
	}
	public int getPoint_used_saved() {
		return point_used_saved;
	}
	public void setPoint_used_saved(int point_used_saved) {
		this.point_used_saved = point_used_saved;
	}
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public int getPoint_type() {
		return point_type;
	}
	public void setPoint_type(int point_type) {
		this.point_type = point_type;
	}
	private int 	 point_no         = 0; 
	  private String point_date       = ""; 
	  private int    point_used_saved = 0; 
	  private int    member_no        = 0; 
	  private int    point_type       = 0; 

}
