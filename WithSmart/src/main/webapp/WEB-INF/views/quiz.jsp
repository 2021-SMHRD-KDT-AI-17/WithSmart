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
    <style>
        /* 추가한 CSS 스타일 */
        .quiz-box {
            border: 2px solid #007bff;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 20px;
        }

        .quiz-question {
            font-weight: bold;
            margin-bottom: 10px;
        }

        .form-check-input {
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <br>
    <br>
    <br>
    <div class="container mt-5">
        <h2 class="text-center mb-4">오늘의 퀴즈</h2>
        <div class="text-center">
            <!-- main 페이지에서 전달된 사용자 ID를 화면에 표시 -->
            <h4>사용자 ID: ${param.mb_id}</h4>
        </div>
        <form id="quiz-form" action="submitQuiz" method="post">
        <input type="hidden" name="mb_id" value="${param.mb_id}">
           <%--  <!-- 사용자 ID를 폼 내부에 직접 표시 -->
            <input type="text" class="form-control mb-3" value="${param.mb_id}" disabled> --%>
            
            <!-- 퀴즈 항목을 감싸는 박스 스타일 추가 -->
            <c:forEach items="${quizList}" var="quiz">
                <div class="quiz-box">
                    <div class="quiz-question">${quiz.quizContent}</div>
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
            
            <button type="submit" class="btn btn-primary mt-3">제출</button>
        </form>
    </div>
</body>
</html>