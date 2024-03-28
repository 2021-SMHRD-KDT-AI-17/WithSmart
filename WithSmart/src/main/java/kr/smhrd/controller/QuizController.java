package kr.smhrd.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.Mapper.QuizMapper;
import kr.smhrd.entity.Quiz;

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
    @RequestMapping("/quizScore")
    public String submitQuiz(
        @RequestParam("quiz_idx") List<Integer> quiz_idxList,
        @RequestParam("mb_id") String mb_id,
        @RequestParam Map<String, String> userAnswerMap,
        Model model
    ) {
        try {
            for (int quiz_idx : quiz_idxList) {
                String userAnswer = userAnswerMap.get("userAnswer_" + quiz_idx);
                quizMapper.insertUserAnswer(quiz_idx, mb_id, userAnswer); // 사용자의 답안 저장
            }
            // 저장 완료 메시지 전달 또는 다음 단계로 이동
            model.addAttribute("message", "사용자의 답안이 저장되었습니다.");
        } catch (Exception e) {
            // 예외 처리
            model.addAttribute("error", "답안 저장 중 오류가 발생했습니다: " + e.getMessage());
        }
        return "quizScore"; // 퀴즈 결과 페이지로 이동
    }
}