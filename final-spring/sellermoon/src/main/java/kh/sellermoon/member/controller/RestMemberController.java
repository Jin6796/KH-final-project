package kh.sellermoon.member.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;

import kh.sellermoon.member.logic.MemberLogic;
import kh.sellermoon.member.vo.MailVO;
import kh.sellermoon.member.vo.MemberVO;

@RestController
//@RequestMapping("/monthlymoon")
public class RestMemberController {
	Logger logger = LoggerFactory.getLogger(RestMemberController.class);
	@Autowired
	private MemberLogic memberLogic = null;
	
	@PostMapping("login")
	public String memberLogin(HttpServletRequest req, MemberVO mVO) {

		logger.info("memberLogin 호출 성공");
		HttpSession session = req.getSession();
		String temp = null;
		MemberVO login = memberLogic.memberLogin(mVO);
		session.setAttribute("member", login);
		Gson g = new Gson();
		temp = g.toJson(login);
		return temp;
	
	}
	
	@PostMapping("emailcheck")
	public String emailChk(MemberVO mVO) {
		logger.info("이메일 중복체크 호출 성공");
		int result = 0;
		String temp = null;
		result = memberLogic.emailChk(mVO);
		Gson g = new Gson();
		temp = g.toJson(result);
		return temp;
	}
	
	@PostMapping("findemail")
	public String findEmail(MemberVO mVO) {
		logger.info("이메일 찾기 호출 성공");
		String temp = null;
		MemberVO findemail = memberLogic.findEmail(mVO);
		Gson g = new Gson();
		temp = g.toJson(findemail);
		return temp;
	}
	
	
	/*****************************************************************************************
	 * 임시 비밀번호 발급
	 * 비밀번호 찾기 -> 이름, 이메일, 전화번호 입력 -> 0 이 나오면 회원정보가 없음 -> 가입하기
	 * -> 회원 이메일이 나오면(1) -> 임시비밀번호 발급 -> DB에 임시비밀번호 업데이트(암호화)
	 * -> 회원에게 메일 발송 -> 로그인 페이지로 이동
	 ****************************************************************************************/

	@PostMapping("sendmail")
	public String sendMail(MemberVO mVO, MailVO mailVO) {
		logger.info("임시 비밀번호 발급 호출 성공");
		int result = 0;
		String temp = null;
		result = memberLogic.tempPass(mVO, mailVO);
		Gson g = new Gson();
		temp = g.toJson(result);
		return temp;
		
	}
	
	// 회원 정보 보기
	@PostMapping("meminfo")
	public String memInfo(MemberVO mVO) {
		logger.info("회원 정보 보기 호출 성공");
		String temp = null;
		MemberVO meminfo = memberLogic.memInfo(mVO);
		Gson g = new Gson();
		temp = g.toJson(meminfo);
		return temp;
	}
	
	// 회원 정보 수정 전 비밀번호 확인
	@PostMapping("passcheck")
	public String passChk(MemberVO mVO) {
		logger.info("비밀번호 확인 호출 성공");
		String temp = null;
		MemberVO passchk = memberLogic.passChk(mVO);
		Gson g = new Gson();
		temp = g.toJson(passchk);
		return temp;
	}
	
	// 회원 탈퇴
	@PostMapping("deletemember")
	public String delMember(MemberVO mVO) {
		logger.info("회원탈퇴 호출 성공");
		int result = 0;
		String temp = null;
		result = memberLogic.delMember(mVO);
		Gson g = new Gson();
		temp = g.toJson(result);
		return temp;
	}
	
	// 회원 정보 수정
	@PostMapping("membermodify")
	public String memberModify(HttpSession session, MemberVO mVO) {
		logger.info("회원정보 수정 호출");
		int result = 0;
		String temp = null;
		result = memberLogic.memberModify(mVO);
		Gson g = new Gson();
		temp = g.toJson(result);
		session.invalidate(); // 수정 후 세션을 지워 다시 로그인 해야함(리액트에서 처리)
		return temp;
	}
	
	// 비밀번호 수정
	@PostMapping("updpass")
	public String updatePass(MemberVO mVO) {
		logger.info("비밀번호 수정 호출 성공");
		int result = 0;
		String temp = null;
		result = memberLogic.updatePass(mVO);
		Gson g = new Gson();
		temp = g.toJson(result);
		return temp;
	}
	

}
