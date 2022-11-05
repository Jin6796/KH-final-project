package kh.sellermoon.member.vo;

import lombok.Data;

@Data
public class PointVO {
	
	  private int point_no         = 0; 
	  private int member_point     = 0; 
	  private int point_date       = 0; 
	  private int point_used_saved = 0; 
	  private int member_no        = 0; 
	  private int point_type       = 0;
	public int getPoint_no() {
		return point_no;
	}
	public void setPoint_no(int point_no) {
		this.point_no = point_no;
	}
	public int getMember_point() {
		return member_point;
	}
	public void setMember_point(int member_point) {
		this.member_point = member_point;
	}
	public int getPoint_date() {
		return point_date;
	}
	public void setPoint_date(int point_date) {
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
	@Override
	public String toString() {
		return "PointVO [point_no=" + point_no + ", member_point=" + member_point + ", point_date=" + point_date
				+ ", point_used_saved=" + point_used_saved + ", member_no=" + member_no + ", point_type=" + point_type
				+ "]";
	} 
}
