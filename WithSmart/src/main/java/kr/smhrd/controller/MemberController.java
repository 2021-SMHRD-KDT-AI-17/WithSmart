package kr.smhrd.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


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
	public String memberInsert(Member member, Model model, @RequestParam("mb_cert") String mb_cert) {
		// System.out.println(member);
		if(mb_cert.equals("AISERVICE17")){
			memberMapper.memberInsert(member);
			model.addAttribute("mb_nick", member.getMb_nick());
			return "JoinSuccess";
		}
		else {
			return "redirect:/goJoin";
		}
	}

	
	@RequestMapping("/goJoin") 
	public String goJoin(){ 
		return "Join_Login"; 
	}
	 
	// 로그인
	@RequestMapping("/goLogin")
	public String goLogin(Member member, HttpSession session, HttpServletRequest request, Model model ) {
		// System.out.println(member);
		
		String todayDate = request.getParameter("todayDate");
		System.out.println(todayDate); 
		String attendance = memberMapper.selectattendance(member.getMb_id()); 
		String getpoint = "0"; 
		if(!(attendance).equals(todayDate)) {
			memberMapper.memberMileage(member);
			memberMapper.updateattendance(member.getMb_id());
			getpoint = "1";
			System.out.println("포인트 획득");
		}else {
			System.out.println("포인트를 이미 획득하였습니다.");
		}
		Member loginMember = memberMapper.goLogin(member);
		session.setAttribute("getpoint", getpoint);
		// model.addAttribute("getpoint", getpoint);
		session.setAttribute("loginMember", loginMember);
		
		// session.setAttribute("loginMember1", loginMember);
		return "Main";
	}
	
	// 로그아웃
	@RequestMapping("/memberLogout")
	public String memberLogout(HttpSession session) {
		session.invalidate();
		return "Main";
	}
	
	// 회원정보 페이지로 이동
	@RequestMapping("/goShowMember")
	public String goShowMember(@RequestParam(defaultValue = "1") int page, Model model) {
		int pagesize = 10;
		int totalCount = memberMapper.getTotalCount();
		int totalPages = (int) Math.ceil((double) totalCount / pagesize);
		if(page>totalPages) {
			page=totalPages;
		}
		int startIndex = (page-1) * pagesize;
		int membersize = memberMapper.getMembersize();
		List<Member> list = memberMapper.getgoShowMember(startIndex);
		model.addAttribute("list",list);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("currentPage", page);
		model.addAttribute("membersize", membersize);
		return "ShowMember";
	}
	
	// 회원정보수정하는 페이지로 이동
	@RequestMapping("/showUpdate")
	public String showUpdate() {
		return "UpdateMember";
	}
	
	// 회원정보 수정
	@RequestMapping("/memberUpdate")
	public String memberUpdate(Member member, HttpSession session) {
		memberMapper.memberUpdate(member);
		session.setAttribute("loginMember", member);
		return "Main";
	}
	
	// 회원삭제
	@RequestMapping("/deleteMember")
	public String deleteMember(@RequestParam("mb_id") String mb_id) {
		memberMapper.deleteMember(mb_id);
		return "redirect:/goShowMember";
	}
	
	// 회원 개인 삭제
	@RequestMapping("/deletePMember")
	public String deletePMember(@RequestParam("mb_id") String mb_id) {
		memberMapper.deleteMember(mb_id);
		System.out.println(mb_id);
		return "redirect:/memberRdelete";
	}
	
	// 회원 개인삭제
	@RequestMapping("/memberdelete")
	public String memberdelete() {
		
		return "DeleteMember";
	}
	
	// 회원 진짜삭제
	@RequestMapping("/memberRdelete")
	public String memberRdelete() {
		return "DeleteRealMember";
	}
	
	

	


}
