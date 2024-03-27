package kr.smhrd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
		Certification cert = certificationMapper.certCheck(inputC);
		if(cert == null) {
			return 1;
		}else {
			return 0;
		}
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

