package kr.smhrd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.Mapper.JobBoardMapper;
import kr.smhrd.entity.JobBoard;

@Controller
public class JobBoardController {

	@Autowired
	private JobBoardMapper jobboardMapper;
	
	@RequestMapping("/goJobBoard")
	public String goJobBoard(Model model) {
		List<JobBoard> b_list = jobboardMapper.jobboardList();
		model.addAttribute("b_list",b_list);
		return "JobBoard";
	}

	@RequestMapping("/goJobBoardDetail")
	public String goJobBoardDetail() {
		return "JobBoardDetail";
	}
	
	
}
