<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>퀴즈</title>
    <!-- 부트스트랩 CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="resources/css/style.css">
</head>
<body>
    <br>
    <div class="container mt-5">
        <h2 class="text-center mb-4">오늘의 퀴즈</h2>
        <form id="quiz-form" action="quizScore" method="post">
            <!-- 사용자 ID 입력 -->
            <label for="mb_id">사용자 ID:</label>
            <input type="text" id="mb_id" name="mb_id">
            
            <div class="list-group">
                <!-- 서버로부터 받은 퀴즈 데이터를 반복문으로 동적으로 추가 -->
                <c:forEach items="${quizList}" var="quiz">
                    <div class="list-group-item">
                        <p>${quiz.quizContent}</p>
                        <input type="hidden" name="quiz_idx" value="${quiz.quiz_idx}">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="userAnswer_${quiz.quiz_idx}" id="choice1_${quiz.quiz_idx}" value="1">
                            <label class="form-check-label" for="choice1_${quiz.quiz_idx}">${quiz.choice1}</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="userAnswer_${quiz.quiz_idx}" id="choice2_${quiz.quiz_idx}" value="2">
                            <label class="form-check-label" for="choice2_${quiz.quiz_idx}">${quiz.choice2}</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="userAnswer_${quiz.quiz_idx}" id="choice3_${quiz.quiz_idx}" value="3">
                            <label class="form-check-label" for="choice3_${quiz.quiz_idx}">${quiz.choice3}</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="userAnswer_${quiz.quiz_idx}" id="choice4_${quiz.quiz_idx}" value="4">
                            <label class="form-check-label" for="choice4_${quiz.quiz_idx}">${quiz.choice4}</label>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <button type="submit" class="btn btn-primary mt-3">제출</button>
        </form>
    </div>
</body>
</html>