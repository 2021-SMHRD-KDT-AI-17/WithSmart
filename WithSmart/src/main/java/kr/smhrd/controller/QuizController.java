package kr.smhrd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.Mapper.QuizMapper;
import kr.smhrd.entity.Quiz;


@Controller
public class QuizController {
    
    @Autowired
    private QuizMapper quizMapper;
    
    // 퀴즈 풀이 페이지
    @RequestMapping("/showQuiz")
    public String showQuiz(Model model) {
        List<Quiz> quizList = quizMapper.showQuiz();
        model.addAttribute("quizList", quizList);
        return "quiz";
    }
    
    // 퀴즈 결과 페이지
    @RequestMapping(value = "/quizScore", method = RequestMethod.POST)
    public String submitQuiz(
        @RequestParam(name = "quiz_idx") String[] quiz_idx,
        @RequestParam(name = "userAnswer") String[] userAnswer,
        Model model
    ) {
        int totalScore = 0;
        int maxScore = quiz_idx.length * 100; // 전체 만점
        for (int i = 0; i < quiz_idx.length; i++) {
            quizMapper.submitQuiz(Integer.parseInt(quiz_idx[i]), Integer.parseInt(userAnswer[i]));
            int correctAnswer = quizMapper.getCorrectAnswer(Integer.parseInt(quiz_idx[i]));
            if (Integer.parseInt(userAnswer[i]) == correctAnswer) {
                totalScore += 10; // 정답인 경우 10점씩 증가
            }
        }
        model.addAttribute("totalScore", totalScore);
        model.addAttribute("maxScore", maxScore);
        return "quizScore"; // 퀴즈 결과 페이지로 이동
    }
}