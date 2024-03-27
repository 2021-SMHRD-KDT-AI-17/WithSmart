package kr.smhrd.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.smhrd.entity.Quiz;

@Mapper
public interface QuizMapper {

List<Quiz> showQuiz();
	
    void submitQuiz(@Param("quiz_idx") int quizIdx, @Param("user_answer") int userAnswer);

	int getCorrectAnswer(int i);
	
	
}
