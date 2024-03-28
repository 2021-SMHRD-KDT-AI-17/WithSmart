package kr.smhrd.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

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
        @RequestParam Map<String, Object> params,
        Model model
    ) {
        String quizIdxListString = (String) params.get("quiz_idx");
        List<Integer> quiz_idxList = Arrays.asList(quizIdxListString.split(","))
                                       .stream()
                                       .map(Integer::parseInt)
                                       .collect(Collectors.toList());
        String mb_id = (String) params.get("mb_id");
        Map<String, String> userAnswerMap = (Map<String, String>) params.get("userAnswerMap");

        int totalScore = 0;
        int maxScore = quiz_idxList.size() * 10; // 각 문제당 최대 10점
        for (int quiz_idx : quiz_idxList) {
            String userAnswer = userAnswerMap.get("userAnswer_" + quiz_idx);
            quizMapper.submitQuiz(quiz_idx, mb_id, userAnswer);
            int correctAnswer = quizMapper.getCorrectAnswer(quiz_idx);
            if (userAnswer.equals(String.valueOf(correctAnswer))) {
                totalScore += 10; // 정답인 경우 10점씩 증가
            }
        }
        model.addAttribute("totalScore", totalScore);
        model.addAttribute("maxScore", maxScore);
        return "quizScore"; // 퀴즈 결과 페이지로 이동
    }
}