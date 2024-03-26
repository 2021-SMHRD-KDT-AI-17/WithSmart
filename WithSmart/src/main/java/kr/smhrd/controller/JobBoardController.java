package kr.smhrd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JobBoardController {

	@RequestMapping("/goJobBoard")
	public String goJobBoard() {
		return "JobBoard";
	}

	@RequestMapping("/goJobBoardDetail")
	public String goJobBoardDetail() {
		return "JobBoardDetail";
	}

	
}
