package kr.smhrd.entity;

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
public class StudyBoardComment {
	 
	private int cmt_idx;
	
	@NonNull 
	private String cmtcontent;
    
    @NonNull 
    private String writer;
    
    private String writetime;
    
    private int heartcount;
    
    private int studyboard_idx;
}
