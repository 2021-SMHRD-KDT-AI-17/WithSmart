package kr.smhrd.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class GroupChat {
	
	private int gp_id;
	private int message_id;
	private String sender_id;
	private String message;
	private String gp_name;
	private String mb_id;

}
