package kr.smhrd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LunchController {
	
	@RequestMapping("/goLunch")
	public String goLunch() {
		return "Lunch";
	}
	
	
	@RequestMapping("/loginSuccess")
	public String loginSuccess() {
		return "JoinSuccess";
	}
}
