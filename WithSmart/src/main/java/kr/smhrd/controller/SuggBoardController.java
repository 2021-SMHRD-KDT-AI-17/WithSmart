package kr.smhrd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SuggBoardController {

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
