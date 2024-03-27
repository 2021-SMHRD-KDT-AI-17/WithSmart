package kr.smhrd.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.smhrd.Mapper.MemberMapper;
import kr.smhrd.entity.Member;

//Handler Mapping이 Controller를 찾기위해 @(Annotation)으로 Controller라고 명시해야 함
// servlet - context.xml 파일에 어떤 패키지에서 Controller를 찾을건지 명시
@Controller
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String home(Locale locale, Model model) {
//		logger.info("Welcome home! The client locale is {}.", locale);
//		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("serverTime", formattedDate );
//		// home -> View name -> controller는 이동하야할 뷰의 경로가 아닌 View name만 돌려줌
//		// home.jsp 파일부터 실행해보기 -> WEB-INF : 보안폴더(다이렉트로 접근 불가), 스프링구조를 지켜주기 위함
//		//                                    : 무조건 디스패쳐 서블릿을 거쳐서 와야 함
//		return "Main"; // /WEB-INF/views/home.jsp
//	}
//	

	// 인터페이스 불러오기
	@Autowired
	private MemberMapper memberMapper;

	// Main.jsp로 이동하는 메소드
	@RequestMapping(value = "/")
	public String main() {
		return "Main";
	}

	@RequestMapping("/goMain")
	public String goMain() {
		return "Main";
	}

	// 회원가입
	@RequestMapping("/memberInsert")
	public String memberInsert(Member member, Model model) {
		// System.out.println(member);
		memberMapper.memberInsert(member);
		// model.addAttribute("mb_nick", member.getMb_nick());
		return "Join_Login";
	}

	
	@RequestMapping("/goJoin") 
	public String goJoin(){ 
		return "Join_Login"; 
	}
	 

	// 로그인
	@RequestMapping("/goLogin")
	public String goLogin(Member member, HttpSession session) {
		System.out.println(member.toString());
		Member loginMember = memberMapper.goLogin(member);
		session.setAttribute("loginMember", loginMember);
		return "Main";
	}

	


}
