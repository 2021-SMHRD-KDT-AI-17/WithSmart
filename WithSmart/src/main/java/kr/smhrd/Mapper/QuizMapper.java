package kr.smhrd.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.Quiz;

@Mapper
public interface QuizMapper {

List<Quiz> showQuiz();
	

 // 주어진 퀴즈 번호에 대한 정답을 가져온다.
    int getCorrectAnswer(int quiz_idx);

	
	
//	("INSERT INTO tbl_test (quiz_idx, mb_id, answer) VALUES (#{quiz_idx}, #{mb_id}, #{userAnswer})")
//    void insertUserAnswer(int quiz_idx, String mb_id, String userAnswer);
//	
	
}
