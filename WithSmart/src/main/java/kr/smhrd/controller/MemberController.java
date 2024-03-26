package kr.smhrd.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


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
	
	@RequestMapping("/")
	public String main() {
		return "Main";
	}
	
	@RequestMapping("/goMain")
	public String goMain() {
		return "Main";
	}

		
	@RequestMapping("/goJoin")
	public String goJoin(){
		return "Join_Login";
	}
	
	@RequestMapping("/goLogin")
	public String goLogin() {
		return "Main";
	}
	
	@RequestMapping("/goStudyBoard")
	public String goStudyBoard() {
		return "StudyBoard";
	}
		
	@RequestMapping("/goStudyBoardDetail")
	public String goStudyBoardDetail() {
		return "StudyBoardDetail";
	}
	
	@RequestMapping("/goStudyBoardWrite")
	public String goStudyBoardWrite(){
		return "StudyBoardWrite";
	}
	
	@RequestMapping("/goQnABoard")
	public String goQnABoard(){
		return "QnABoard";
	}
	@RequestMapping("/goQnABoardDetail")
	public String goQnABoardDetail0(){
		return "QnABoardDetail";
	}
	@RequestMapping("/goQnABoardWrite")
	public String goQnABoardWrite(){
		return "QnABoardWrite";
	}
	
	@RequestMapping("/goProjectBoard")
	public String goProjectBoard() {
		return "ProjectBoard";
	}
	@RequestMapping("/goProjectBoardDetail")
	public String goProjectBoardDetail() {
		return "ProjectBoardDetail";
	}
	@RequestMapping("/goProjectBoardWrite")
	public String goProjectBoardWrite() {
		return "ProjectBoardWrite";
	}
	
	@RequestMapping("/goFriendBoard")
	public String goFriendBoard() {
		return "FriendBoard";
	}
	@RequestMapping("/goFriendBoardDetail")
	public String goFriendBoardDetail() {
		return "FriendBoardDetail";
	}
	@RequestMapping("/goFriendBoardWrite")
	public String goFriendBoardWrite() {
		return "FriendBoardWrite";
	}

	@RequestMapping("/goCompetBoard")
	public String goCompetBoard() {
		return "CompetBoard";
	}
	@RequestMapping("/goCompetBoardDetail")
	public String goCompetBoardDetail() {
		return "CompetBoardDetail";
	}
	
	@RequestMapping("/goJobBoard")
	public String goJobBoard() {
		return "JobBoard";
	}
	@RequestMapping("/goJobBoardDetail")
	public String goJobBoardDetail() {
		return "JobBoardDetail";
	}

	@RequestMapping("/goSuggBoard")
	public String goSuggBoard() {
		return "SuggBoard";
	}
	
	@RequestMapping("/goSuggBoardDetail")
	public String goSuggBoardDetail() {
		return "SuggBoardDetail";
	}
	
	@RequestMapping("/goSuggBoardWrite")
	public String goSuggBoardWrite() {
		return "SuggBoardWrite";
	}
	


}



