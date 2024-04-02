package kr.smhrd.Mapper;

import java.util.List;

import kr.smhrd.entity.Message;
import lombok.NonNull;

public interface MessageMapper {

	public void messageSend(Message message);

	public List<Message> messageList(@NonNull String mb_id);

	public void deleteMessage(int message_idx);

	public void deleteAllMessage(@NonNull String mb_id);

	public List<Message> getmessageList(@NonNull String mb_id);



}
