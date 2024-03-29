package kr.smhrd.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.Mapper.QuizMapper;
import kr.smhrd.entity.Quiz;
import kr.smhrd.entity.QuizAnswer;

@Controller
public class QuizController {
    @Autowired
    private QuizMapper quizMapper;
    
    
    @RequestMapping("/quizMain")
    public String showQuizMainPage() {
        return "quizMain"; // 메인 페이지를 표시
    }
    
    // 퀴즈 풀이 페이지
    @RequestMapping("/showQuiz")
    public String showQuiz(Model model) {
        List<Quiz> quizList = quizMapper.showQuiz();
        model.addAttribute("quizList", quizList);
        return "quiz";
    }
    
    
    
   
 // 퀴즈 결과 페이지
    @RequestMapping("/submitQuiz")
    public String submitQuiz(
    		@RequestParam("quiz_idx") List<Integer> quiz_idxList,
    	    @RequestParam("mb_id") String mb_id,
    	    @RequestParam Map<String, String> userAnswerMap,
    	    Model model
    	) {
    	try {
            int totalCorrectAnswers = 0; // 총 정답 수 초기화
            int totalQuestions = quiz_idxList.size(); // 총 문제 수
            int maxScore = totalQuestions * 10; // 만점을 계산 (한 문제당 10점)

            // 각 문제에 대한 채점
            for (int quiz_idx : quiz_idxList) {
                // 사용자가 선택한 답 가져오기
                String userAnswer = userAnswerMap.get("userAnswer_" + quiz_idx);
                // 정답 가져오기
                int correctAnswer = quizMapper.getCorrectAnswer(quiz_idx);

                // 사용자 답안과 정답 비교하여 정확도 계산
                if (userAnswer != null && userAnswer.equals(String.valueOf(correctAnswer))) {
                    totalCorrectAnswers++; // 정답일 경우 정답 수 증가
                }

                // 사용자가 선택한 답을 DB에 저장
                QuizAnswer quizAnswer = new QuizAnswer();
                quizAnswer.setQuiz_idx(quiz_idx);
                quizAnswer.setMb_id(mb_id);
                quizAnswer.setUserAnswer(userAnswer);
                quizMapper.submitQuiz(quizAnswer);
            }

            // 점수 계산: 총 정답 수 * 한 문제당 점수
            int score = totalCorrectAnswers * 10;

            // 채점 결과를 모델에 추가
            model.addAttribute("totalQuestions", totalQuestions);
            model.addAttribute("totalCorrectAnswers", totalCorrectAnswers);
            model.addAttribute("score", score);
            model.addAttribute("maxScore", maxScore);

            // 채점 결과 페이지로 이동
            return "quizScore";
        } catch (Exception e) {
            // 예외 처리
            model.addAttribute("error", "채점 중 오류가 발생했습니다: " + e.getMessage());
            return "quizError"; // 에러 페이지로 이동
        }
    }
    @RequestMapping("/backToMain")
    public String backToMain() {
        return "redirect:/quizMain";
    }
    
    @RequestMapping("/goquizRanking")
    public String goquizRanking() {
    	return "quizRanking";
    }
    
    
    @RequestMapping("showRanking")
    	public String showRanking(Model model) {
    	
    	List<Map<String,Object>> ranking = quizMapper.getquizRanking();
    	
    	model.addAttribute("ranking",ranking);
    	
    	return "redirect:/quizRanking";
    }
    
    
}
