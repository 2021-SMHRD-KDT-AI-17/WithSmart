package kr.smhrd.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Data
@NoArgsConstructor
public class Quiz {
	@NonNull
	private int quiz_idx;
    private String quizContent;
    private String choice1;
    private String choice2;
    private String choice3;
    private String choice4;
    @NonNull
    private String answer;
    
   
	
	
	
}