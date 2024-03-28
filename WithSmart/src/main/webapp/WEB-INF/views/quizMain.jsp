<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>오늘의 퀴즈 메인</title>
    <!-- 부트스트랩 CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
         <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;700&display=swap" rel="stylesheet">
  
  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
  <link rel="stylesheet" href="resources/css/owl.carousel.min.css">
  <link rel="stylesheet" href="resources/css/owl.theme.default.min.css">
  <link rel="stylesheet" href="resources/fonts/icomoon/style.css">
  <link rel="stylesheet" href="resources/fonts/feather/style.css">
  <link rel="stylesheet" href="resources/fonts/flaticon/font/flaticon.css">
  <link rel="stylesheet" href="resources/css/jquery.fancybox.min.css">
  <link rel="stylesheet" href="resources/css/aos.css">
  <link rel="stylesheet" href="resources/css/style.css">
</head>
<body>
<br>
<br>
<br>
   <form id="start-quiz-form" action="showQuiz" method="post">
    <div class="container mt-5">
        <div class="text-center">
            <input type="text" name="mb_id" placeholder="사용자 ID 입력" required>
            <button type="submit" class="btn btn-primary btn-lg">오늘의 퀴즈 풀기</button>
        </div>
    </div>
</form>
</body>
</html>