package kr.smhrd.Mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.Quiz;
import kr.smhrd.entity.QuizAnswer;

@Mapper
public interface QuizMapper {


	List<Quiz> showQuiz();

    // 주어진 퀴즈 번호에 대한 정답을 가져온다.
    int getCorrectAnswer(int quiz_idx);

    // 단일 인자로 QuizAnswer 객체를 받도록 수정
   
    void submitQuiz(QuizAnswer quizAnswer);

    List<Map<String, Object>> getQuizRankingWithScore();
}