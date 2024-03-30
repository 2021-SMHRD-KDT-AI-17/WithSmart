package kr.smhrd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.Mapper.QnABoardCommentMapper;



@Controller
public class QnABoardCommentController {
	
	
	@Autowired
	private QnABoardCommentMapper qnaBoardCommentMapper;
	
	
	@RequestMapping("/QnABoardComment")
	public String QnABoardComment(@RequestParam("writer") String writer,
								  @RequestParam("cmtcontent") String cmtcontent,
								  @RequestParam("qnaboard_idx") int qnaboard_idx,
								  Model model) {
		
	qnaBoardCommentMapper.insertComment(writer, cmtcontent, qnaboard_idx);
	return "redirect:/QboardContent?qnaboard_idx=" + qnaboard_idx;
	}
	
}
