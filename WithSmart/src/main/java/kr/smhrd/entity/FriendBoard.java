package kr.smhrd.entity;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@Getter
@Setter
@ToString
@NoArgsConstructor
@RequiredArgsConstructor

public class FriendBoard {



    // 친목 식별자 
    private int friendboard_idx;

    @NonNull private String title;
    
    @NonNull private String writer;
    
    @NonNull private String filename;
    
    @NonNull private String content;
    
    private String writetime;
    
    private int viewcount;
    
    private int heartcount;

	public FriendBoard(int friendboard_idx, @NonNull String title, @NonNull String writer, @NonNull String filename,
			@NonNull String content) {
		super();
		this.friendboard_idx = friendboard_idx;
		this.title = title;
		this.writer = writer;
		this.filename = filename;
		this.content = content;
	}
    
   
	
	
	
}
