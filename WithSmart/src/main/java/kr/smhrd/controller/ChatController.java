package kr.smhrd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.Mapper.ChatMapper;
import kr.smhrd.entity.Chat;

@Controller
public class ChatController {
	
	
	@Autowired
	private ChatMapper chatMapper;
	
	@RequestMapping("/showChat")
	public String showChat(Model model) {
		model.addAttribute("chat", chatMapper.getAllGroupChat());
		
		return "chatting";
	}
	
	@RequestMapping("/showMember")
	public String showMember(Model model, int gpid) {
		model.addAttribute("member",chatMapper.getGroupMember(gpid));
		return "chatMember";
	}
	
	@RequestMapping("/showMessage")
	public String showMessage(Model model, int gpid) {
		model.addAttribute("message",chatMapper.getGroupChatMessage(gpid));
		return "chatMessage";
	}
	
	@RequestMapping("/createChat")
	public String createChat(String gpname) {
		chatMapper.saveGroupChat(new Chat(gpname));
		
		return "redirect:/showChat";
	}
	
	@RequestMapping("/addMember")
	public String addMember(int gpid, String mbid) {
		chatMapper.saveGroupMember(new Chat(gpid,mbid));
		return "redirect:/showMember?gpid="+gpid;
	}
	
	 @RequestMapping("/sendMessage")
	    public String sendMessage(int gpid, String senderid, String message) {
	        // 새로운 그룹 채팅 메시지를 저장
	        chatMapper.saveGroupChatMessage(new Chat(gpid, senderid, message));
	        
	        return "redirect:/showMessage?gpid=" + gpid;
	    }

}
