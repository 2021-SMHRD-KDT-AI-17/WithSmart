package kr.smhrd.Mapper;

import java.util.List;

import kr.smhrd.entity.Chat;

public interface ChatMapper {

    List<Chat> getAllGroupChat();

    void saveGroupChat(Chat chat);

    void saveGroupMember(Chat chat);

    void saveGroupChatMessage(Chat chat);

    List<Chat> getGroupChatMessage(Integer gp_id); // gp_id 타입 변경

    List<Chat> getGroupMember(Integer gp_id); // gp_id 타입 변경
}