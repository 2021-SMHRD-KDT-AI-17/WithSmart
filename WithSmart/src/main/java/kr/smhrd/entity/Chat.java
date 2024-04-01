package kr.smhrd.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Chat {
	
	public Chat(String gpname) {
		// TODO Auto-generated constructor stub
	}
	
	public Chat(int gpid, String mbid) {
		// TODO Auto-generated constructor stub
	}
	public Chat(int gpid, String senderid, String message2) {
		// TODO Auto-generated constructor stub
	}
	private int gp_id;
	private int message_id;
	private String sender_id;
	private String message;
	private String gp_name;

}
