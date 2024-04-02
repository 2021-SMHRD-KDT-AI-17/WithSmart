package kr.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smhrd.Mapper.CertificationMapper;
import kr.smhrd.Mapper.MemberMapper;
import kr.smhrd.entity.Member;
import kr.smhrd.entity.Certification;

@org.springframework.web.bind.annotation.RestController
public class RestController {
	
	@Autowired
	private MemberMapper memberMapper;
	
	@Autowired
	private CertificationMapper certificationMapper;
	
	// Email 중복체크
	@RequestMapping("/emailCheck")
	public int emailCheck(@RequestParam("inputE") String inputE) {
		
		Member member = memberMapper.emailCheck(inputE);
		// System.out.println(member.toString());
		if(member == null) {
			// 사용가능
			return 1;
		}else {
			// 사용불가능
			return 0;
		}
	}
	
	// 인증번호 확인
	@RequestMapping("/certCheck")
	public int certCheck(@RequestParam("inputC") String inputC) {
		 Certification certification = certificationMapper.certCheck(inputC);
		 if(certification != null) {
			 return 1;
		 }else {
			 return 0;
		 }
		 
		 
		 
//		if((inputC.equals("AISERVICE17"))||(inputC.equals("AISERVICE18"))) {
//			return 1;
//		}else {
//			return 0;
//		}
	}
	
	// 아이디비번체크
	@RequestMapping("/LoginCheck")
	public @ResponseBody int LoginCheck(@RequestParam("inputId") String inputId, @RequestParam("inputPw") String inputPw) {
		Member member = memberMapper.LoginCheck(inputId);
		if(member==null) {
			return 1;
		}else {
			if(member.getMb_pw().equals(inputPw)) {
				return 2;
			}else {
				return 3;
			}
		}
		
	}
	// 사용자 이메일 보이기
	@RequestMapping("/getMemberEmail")
	public List<Member> getMemberEmail(){
		List<Member> myList = memberMapper.goShowMember();
		return myList;
	}
	
	
//	// 회원가입 성공 유무
//	@RequestMapping("/InsertCheck")
//	public int InsertCheck(@RequestParam("inputE") String inputE) {
//		Member member = memberMapper.InsertCheck(inputE);
//		if(member == null) {
//			return 1;
//		}else {
//			return 0;
//		}
//	}
}

