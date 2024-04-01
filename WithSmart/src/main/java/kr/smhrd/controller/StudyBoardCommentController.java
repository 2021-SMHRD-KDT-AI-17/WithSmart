package kr.smhrd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.Mapper.StudyBoardCommentMapper;




@Controller
public class StudyBoardCommentController {
	
	
	@Autowired
	private StudyBoardCommentMapper studyBoardCommentMapper;
	
	
	@RequestMapping("/StudyBoardComment")
	public String StudyBoardComment(@RequestParam("writer") String writer,
								  @RequestParam("cmtcontent") String cmtcontent,
								  @RequestParam("studyboard_idx") int studyboard_idx,
								  Model model) {
		
	studyBoardCommentMapper.insertComment(writer, cmtcontent, studyboard_idx);
	return "redirect:/StboardContent?studyboard_idx=" + studyboard_idx;
	}
	
}
