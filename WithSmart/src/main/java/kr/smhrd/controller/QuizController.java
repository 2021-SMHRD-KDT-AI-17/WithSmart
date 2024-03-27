package kr.smhrd.controller;

import org.springframework.web.bind.annotation.RequestMapping;

public class QuizController {

	
	@RequestMapping("/goQuizBoard")
	public String goQuizBoard() {
		return "QuizBoard";
	}
	
	
	
}
