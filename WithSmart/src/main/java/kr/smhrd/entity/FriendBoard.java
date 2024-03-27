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

	    // 글제목 
	    @NonNull private String title;

	    // 작성자 
	    @NonNull private String writer;
	    
	    // 파일명 
	    @NonNull private String filename;

	    // 글내용 
	    @NonNull private String content;
	    
	    // 작성시각 
	    private Timestamp writetime;

	    // 조회수 
	    private Integer viewcount;

	    // 추천수 
	    private Integer heartcount;



	
	
	
}
