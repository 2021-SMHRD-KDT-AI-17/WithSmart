package kr.smhrd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.Mapper.MemberMapper;
import kr.smhrd.entity.Member;

@org.springframework.web.bind.annotation.RestController
public class RestController {
	
	private MemberMapper memberMapper;
	
	// Email 중복체크 / emailCheck
	@RequestMapping("/emailCheck")
	public int emailCheck(@RequestParam("inputE") String inputE) {
		
		Member member = memberMapper.emailCheck(inputE);
		
		if(member == null) {
			return 1;
		}else {
			return 0;
		}
	}
}
