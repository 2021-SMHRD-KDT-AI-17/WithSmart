package kr.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.Mapper.MessageMapper;
import kr.smhrd.entity.Member;
import kr.smhrd.entity.Message;

@Controller
public class MessageController {
	
	@Autowired
	private MessageMapper messageMapper;
	
	// 메세지로 이동하기
	@RequestMapping("/goMessage")
	public String goMessage() {
		return "MessageMain";
	}
	
	// 메시지 확인 이동하기
	@RequestMapping("/goMessageCheck")
	public String goMessageCheck(@RequestParam(defaultValue = "1") int page, Model model, HttpSession session) {				
		Member member = (Member)session.getAttribute("loginMember");
		
		int pagesize = 10;
		int totalCount = messageMapper.getTotalCount(member.getMb_id());
		int totalPages = (int) Math.ceil((double) totalCount / pagesize);
		if (totalPages <1) {
			totalPages = 1;
		}
	    if (page > totalPages) {
	        page = totalPages;
	    }
	    int startIndex = (page - 1) * pagesize; // 시작 인덱스 계산
	    List<Message> m_list = messageMapper.getmessageList(member.getMb_id(),startIndex);
		model.addAttribute("m_list", m_list);
		model.addAttribute("totalPages", totalPages);
	    model.addAttribute("currentPage", page);
		return "MessageCheck";
	}


	
	// 메세지 보내기
	@RequestMapping("/messageSend")
	public String messageSend(Message message) { 
	messageMapper.messageSend(message);
	return "redirect:/goMessageCheck";
} 
	
	// 메세지 개별삭제
	@RequestMapping("/deleteMessage")
	public String deleteMessage(@RequestParam("message_idx") int message_idx, HttpSession session) {
		messageMapper.deleteMessage(message_idx);
		Member member = (Member)session.getAttribute("loginMember");
		List<Message> m_list = messageMapper.messageList(member.getMb_id());
		session.setAttribute("m_list", m_list);
		return "redirect:/goMessageCheck";
	}
	
	// 메세지 전체삭제
	@RequestMapping("/deleteAllMessage")
	public String deleteAllMessage(HttpSession session) {
		Member member = (Member)session.getAttribute("loginMember");
		messageMapper.deleteAllMessage(member.getMb_id());
		List<Message> m_list = messageMapper.messageList(member.getMb_id());
		session.setAttribute("m_list", m_list);
		return "redirect:/goMessageCheck";
	}
	
}
