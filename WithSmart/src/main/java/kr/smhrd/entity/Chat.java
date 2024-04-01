package kr.smhrd.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Chat {

	 private int gp_id;
	    private int message_id;
	    private String sender_id;
	    private String message;
	    private String gpname; // 'gp_name' -> 'gpname' 으로 수정

	    // 'gpname' 속성에 대한 getter 메서드
	    public String getGpname() {
	        return gpname;
	    }

	    // 'gpname' 속성에 대한 setter 메서드
	    public void setGpname(String gpname) {
	        this.gpname = gpname;
	    }

	    public Chat(String gpname) {
	        this.gpname = gpname;
	    }

	    public Chat(int gp_id, String sender_id) {
	        this.gp_id = gp_id;
	        this.sender_id = sender_id;
	    }

	    public Chat(int gp_id, String sender_id, String message) {
	        this.gp_id = gp_id;
	        this.sender_id = sender_id;
	        this.message = message;
	    }
}

