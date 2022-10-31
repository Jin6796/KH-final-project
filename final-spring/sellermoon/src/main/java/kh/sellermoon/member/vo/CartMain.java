package kh.sellermoon.member.vo;

public class CartMain {
	public static void main(String[]  args) {
		CartMasterVO cmVO = new CartMasterVO();
		CartSubVO csVO = new CartSubVO();
		csVO.setBs_file("공정표");
		csVO.setBs_size("5.5");
		System.out.println(csVO);
		cmVO.setB_no(10);
		cmVO.setB_writer("이성계");
		cmVO.setBoardSubVO(csVO);
		System.out.println(cmVO.getBoardSubVO());
	}
}
