package kr.smhrd.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.smhrd.entity.Message;
import lombok.NonNull;

public interface MessageMapper {

	public void messageSend(Message message);

	public List<Message> messageList(@NonNull String mb_id);

	public void deleteMessage(int message_idx);

	public void deleteAllMessage(@NonNull String mb_id);

	public List<Message> getmessageList(@Param("mb_id") String mb_id, @Param("startIndex")int startIndex);

	public int getTotalCount(@NonNull String mb_id);

	

	



}
