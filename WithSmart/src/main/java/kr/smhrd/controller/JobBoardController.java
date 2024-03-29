package kr.smhrd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.Mapper.JobBoardMapper;
import kr.smhrd.entity.JobBoard;

@Controller
public class JobBoardController {

	@Autowired
	private JobBoardMapper jobboardMapper;
	
	@RequestMapping("/goJobBoard")
	public String goJobBoard(@RequestParam(defaultValue = "1") int page, Model model) {
		int pagesize = 10;
	    int totalCount = jobboardMapper.getTotalCount();
	    int totalPages = (int) Math.ceil((double) totalCount / pagesize);
	    if (page > totalPages) {
	        page = totalPages;
	    }
	    int startIndex = (page - 1) * pagesize; // 시작 인덱스 계산
	    List<JobBoard> b_list = jobboardMapper.getJobBoardList(startIndex);
	    model.addAttribute("b_list", b_list);
	    model.addAttribute("totalPages", totalPages);
	    model.addAttribute("currentPage", page);
	    return "JobBoard";
	}
	

	@RequestMapping("/goJobBoardDetail")
	public String goJobBoardDetail(@RequestParam("job_idx") int job_idx) {
		jobboardMapper.JobCount(job_idx);
		return "redirect:/JobBoard";
	}
	
	
}
