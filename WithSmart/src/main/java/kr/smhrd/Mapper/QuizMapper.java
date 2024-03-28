package kr.smhrd.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.smhrd.entity.Quiz;

@Mapper
public interface QuizMapper {

List<Quiz> showQuiz();
	

 // 주어진 퀴즈 번호에 대한 정답을 가져온다.
    int getCorrectAnswer(int quiz_idx);

	void submitQuiz(int quiz_idx, String userId, String userAnswer);
	
	
}
