package kr.smhrd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.Mapper.FriendBoardCommentMapper;



@Controller
public class FriendBoardCommentController {
	
	
	@Autowired
	private FriendBoardCommentMapper friendBoardCommentMapper;
	
	
	@RequestMapping("/FriendBoardComment")
	public String FriendBoardComment(@RequestParam("writer") String writer,
								  @RequestParam("cmtcontent") String cmtcontent,
								  @RequestParam("friendboard_idx") int friendboard_idx,
								  Model model) {
	System.out.println(writer);
	System.out.println(cmtcontent);
	System.out.println(friendboard_idx);
	
	friendBoardCommentMapper.insertComment(writer, cmtcontent, friendboard_idx);
	return "redirect:/FboardContent?friendboard_idx=" + friendboard_idx;
	}
	
	@RequestMapping("/Frboardcommentheart")
	public String Frboardcommentheart(int cmt_idx, int friendboard_idx) {
		friendBoardCommentMapper.Frboardcommentheart(cmt_idx);
		return "redirect:/FboardContent?friendboard_idx=" + friendboard_idx;
	}
	
}
