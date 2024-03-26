package kr.smhrd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QnABoardController {

	@RequestMapping("/goQnABoard")
	public String goQnABoard() {
		return "QnABoard";
	}

	@RequestMapping("/goQnABoardDetail")
	public String goQnABoardDetail0() {
		return "QnABoardDetail";
	}

	@RequestMapping("/goQnABoardWrite")
	public String goQnABoardWrite() {
		return "QnABoardWrite";
	}
	
}
