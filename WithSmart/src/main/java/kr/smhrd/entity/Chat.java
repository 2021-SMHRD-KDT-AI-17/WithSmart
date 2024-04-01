package kr.smhrd.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Chat {

	    private Integer gp_id;
	    private int message_id;
	    private String sender_id;
	    private String message;
	    private String gp_name;
	    private String mb_id;// 'gp_name' -> 'gpname' 으로 수정

	    // 'gpname' 속성에 대한 getter 메서드
	    public String getGpname() {
	        return gp_name;
	    }

	    // 'gpname' 속성에 대한 setter 메서드
	    public void setGpname(String gp_name) {
	        this.gp_name = gp_name;
	    }

	    public Chat(String gp_name) {
	        this.gp_name = gp_name;
	    }

	    public Chat(Integer gp_id, String sender_id) { // gp_id의 타입 변경
	        this.gp_id = gp_id;
	        this.sender_id = sender_id;
	    }

	    public Chat(Integer gp_id, String sender_id, String message) { // gp_id의 타입 변경
	        this.gp_id = gp_id;
	        this.sender_id = sender_id;
	        this.message = message;
	    }
	    
	 // 'mb_id' 속성에 대한 getter 메서드
	    public String getMb_id() {
	        return mb_id;
	    }

	    // 'mb_id' 속성에 대한 setter 메서드
	    public void setMb_id(String mb_id) {
	        this.mb_id = mb_id;
	    }
}

