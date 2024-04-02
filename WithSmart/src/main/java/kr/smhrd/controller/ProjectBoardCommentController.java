package kr.smhrd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.Mapper.ProjectBoardCommentMapper;





@Controller
public class ProjectBoardCommentController {
	
	
	@Autowired
	private	ProjectBoardCommentMapper projectBoardCommentMapper;
	
	
	@RequestMapping("/ProjectBoardComment")
	public String ProjectBoardComment(@RequestParam("writer") String writer,
								  @RequestParam("cmtcontent") String cmtcontent,
								  @RequestParam("projectboard_idx") int projectboard_idx,
								  Model model) {
		
	projectBoardCommentMapper.insertComment(writer, cmtcontent, projectboard_idx);
	return "redirect:/PboardContent?projectboard_idx=" + projectboard_idx;
	}
	
	@RequestMapping("/Projectcommentheart")
	public String Projectcommentheart(int cmt_idx, int projectboard_idx) {
		projectBoardCommentMapper.Projectcommentheart(cmt_idx);
		return "redirect:/PboardContent?projectboard_idx=" + projectboard_idx;
	}
}
