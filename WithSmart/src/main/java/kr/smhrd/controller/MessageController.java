package kr.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	public String goMessageCheck() {
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
		return "redirect:/goMessage";
	}
	
	// 메세지 전체삭제
	@RequestMapping("/deleteAllMessage")
	public String deleteAllMessage(HttpSession session) {
		Member member = (Member)session.getAttribute("loginMember");
		messageMapper.deleteAllMessage(member.getMb_id());
		List<Message> m_list = messageMapper.messageList(member.getMb_id());
		session.setAttribute("m_list", m_list);
		return "redirect:/goMessage";
	}
	
}
