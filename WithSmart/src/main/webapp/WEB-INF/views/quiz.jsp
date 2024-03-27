<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>퀴즈</title>
</head>
<body>
   <h1>오늘의 퀴즈</h1>
    <form id="quiz-form" action="quizScore" method="post">
        <ul>
            <!-- 서버로부터 받은 퀴즈 데이터를 반복문으로 동적으로 추가 -->
            <c:forEach items="${quizList}" var="quiz">
                <li>
                    <p>${quiz.quizContent}</p>
                    <!-- 퀴즈 인덱스를 quiz_idx로 받음 -->
                    <input type="hidden" name="quiz_idx" value="${quiz.quiz_idx}">
                    <!-- 각 퀴즈별로 사용자의 선택을 받기 위해 name 속성 수정 -->
                    <label>
                        <input type="radio" name="userAnswer_${quiz.quiz_idx}" value="1">
                        ${quiz.choice1}
                    </label><br>
                    <label>
                        <input type="radio" name="userAnswer_${quiz.quiz_idx}" value="2">
                        ${quiz.choice2}
                    </label><br>
                    <label>
                        <input type="radio" name="userAnswer_${quiz.quiz_idx}" value="3">
                        ${quiz.choice3}
                    </label><br>
                    <label>
                        <input type="radio" name="userAnswer_${quiz.quiz_idx}" value="4">
                        ${quiz.choice4}
                    </label><br>
                </li>
            </c:forEach>
        </ul>
        <button type="submit">제출</button>
    </form>
</body>
</html>