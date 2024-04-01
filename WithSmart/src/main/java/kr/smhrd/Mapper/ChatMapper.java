package kr.smhrd.Mapper;

import java.util.List;

import kr.smhrd.entity.Chat;

public interface ChatMapper {


	 List<Chat> getAllGroupChat();

	    void saveGroupChat(Chat chat);

	    void saveGroupMember(Chat chat);

	    void saveGroupChatMessage(Chat chat);

	    List<Chat> getGroupChatMessage(int gpid);

	    List<Chat> getGroupMember(int gpid);


	

}
