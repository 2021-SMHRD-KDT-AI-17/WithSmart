package kr.smhrd.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class QuizAnswer {
	
	private int quiz_idx;
    private String mb_id;
    private String userAnswer;
}