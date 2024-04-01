package kr.smhrd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
    public String showMember(Model model, @RequestParam(name = "gp_id", required = false) Integer gp_id) {
        model.addAttribute("member", chatMapper.getGroupMember(gp_id));
        return "chatMember";
    }

    @RequestMapping("/showMessage")
    public String showMessage(Model model, @RequestParam(name = "gp_id", required = false) Integer gp_id) {
        model.addAttribute("message", chatMapper.getGroupChatMessage(gp_id));
        return "chatMessage";
    }
    
    @RequestMapping("/createChat")
    public String createChat(@RequestParam("gp_name") String gp_name, @RequestParam(name = "gp_id", required = false) Integer gp_id) {
        // 'gp_id'를 사용하여 작업 수행
        chatMapper.saveGroupChat(new Chat(gp_name));
        
        return "redirect:/showMember";
    }
    
    @RequestMapping("/addMember")
    public String addMember(Integer gp_id, String mb_id) {
        if (gp_id == null) {
            // gp_id가 null이면 적절한 예외 처리를 수행하거나, 사용자에게 메시지를 보여줍니다.
            // 이 예제에서는 간단히 오류 페이지로 리다이렉트합니다.
            return "redirect:/";
        }

        chatMapper.saveGroupMember(new Chat(gp_id, mb_id));
        return "redirect:/showMessage?gp_id=" + gp_id;
    }
    
    @RequestMapping("/sendMessage")
    public String sendMessage(Integer gp_id, String sender_id, String message) {
        // 새로운 그룹 채팅 메시지를 저장
        chatMapper.saveGroupChatMessage(new Chat(gp_id, sender_id, message));
        
        return "redirect:/showMessage?gp_id=" + gp_id;
    }

}
