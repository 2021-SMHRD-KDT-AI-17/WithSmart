<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="./header.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>퀴즈 결과</title>

<!-- 부트스트랩 CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;700&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="resources/fonts/icomoon/style.css">
<link rel="stylesheet" href="resources/fonts/feather/style.css">
<link rel="stylesheet" href="resources/fonts/flaticon/font/flaticon.css">
<link rel="stylesheet" href="resources/css/jquery.fancybox.min.css">
<link rel="stylesheet" href="resources/css/aos.css">
<link rel="stylesheet" href="resources/css/style.css">

<style>
/* 퀴즈 결과 페이지에 대한 추가적인 스타일 */
.quiz-result-container {
	text-align: center;
	margin-top: 50px;
}

.quiz-score {
	font-size: 24px;
	font-weight: bold;
	margin-bottom: 20px;
}

.quiz-message {
	font-size: 18px;
	margin-bottom: 30px;
}

.btn-back-to-main {
	font-size: 18px;
	padding: 10px 30px;
	margin-right: 10px; /* 버튼 간 간격을 조절합니다. */
}

.btn-go-quiz-Ranking {
	font-size: 18px;
	padding: 10px 30px;
}
</style>
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="container">
		<div class="quiz-result-container">
			<h1>퀴즈 결과</h1>

			<!-- 사용자의 점수 표시 -->
			<p class="quiz-score">당신의 점수는 ${score} / ${maxScore} 점입니다.</p>

			<!-- 사용자의 점수에 따른 메시지 표시 -->
			<p class="quiz-message">
				<c:choose>
					<c:when test="${score == maxScore}">
						<!-- 만점일 경우 -->
        모든 문제를 정확히 맞추셨습니다! 축하합니다!
    </c:when>
					<c:when test="${score > maxScore / 2}">
						<!-- 절반 이상을 맞춘 경우 -->
        잘 하셨습니다. 더 많은 연습을 통해 더 높은 점수를 획득하세요!
    </c:when>
					<c:otherwise>
						<!-- 절반 미만을 맞춘 경우 -->
        아쉬워요... 다음엔 잘 할수 있을거에요...
    </c:otherwise>
				</c:choose>
			</p>

			<!-- 버튼 그룹 -->
<div class="btn-group">
    <!-- 초기화면으로 돌아가는 버튼 -->
    <form id="quiz-score-form" action="backToMain" method="post">
        <button type="submit" class="btn btn-primary btn-back-to-main btn-lg">초기화면으로 돌아가기</button>
    </form>

    <!-- 랭킹 보기 버튼 -->
    <form id="quiz-ranking-form" action="goquizRanking" method="post">
        <button type="submit" class="btn btn-primary btn-go-quiz-Ranking btn-lg">랭킹 보기</button>
    </form>
</div>
		</div>
	</div>
</body>
</html>