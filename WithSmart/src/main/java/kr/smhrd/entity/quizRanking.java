package kr.smhrd.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class quizRanking {
	private int test_idx;
	private int quiz_idx;
	private String mb_id;
	private String answer;
	private String best_answer_yn;

}
