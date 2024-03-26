package kr.smhrd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StudyBoardController {

	@RequestMapping("/goStudyBoard")
	public String goStudyBoard() {
		return "StudyBoard";
	}

	@RequestMapping("/goStudyBoardDetail")
	public String goStudyBoardDetail() {
		return "StudyBoardDetail";
	}

	@RequestMapping("/goStudyBoardWrite")
	public String goStudyBoardWrite() {
		return "StudyBoardWrite";
	}

	
}
