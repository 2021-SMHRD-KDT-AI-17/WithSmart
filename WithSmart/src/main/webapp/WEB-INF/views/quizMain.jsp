<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="./header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>오늘의 퀴즈 메인</title>
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
body {
	background-color: #f8f9fa; /* 배경색 설정 */
	font-family: 'Montserrat', sans-serif; /* 폰트 설정 */
}

.container {
	margin-top: 100px; /* 위 여백 설정 */
}

form {
	text-align: center; /* 폼 내부 요소 가운데 정렬 */
}

input[type="text"] {
	width: 300px; /* 입력 창 너비 설정 */
	margin-bottom: 20px; /* 아래쪽 여백 설정 */
	padding: 10px; /* 입력 필드 패딩 설정 */
	border: 2px solid #ccc; /* 입력 필드 테두리 설정 */
	border-radius: 5px; /* 입력 필드 테두리 둥글게 설정 */
	background-color: #f2f2f2; /* 입력 필드 배경색 설정 */
	font-size: 16px; /* 입력 필드 폰트 크기 설정 */
	text-align: center; /* 입력 필드 텍스트 가운데 정렬 */
}

button[type="submit"] {
	width: 300px; /* 버튼 너비 설정 */
	padding: 10px; /* 버튼 안쪽 여백 설정 */
	font-size: 16px; /* 버튼 폰트 크기 설정 */
	border: none; /* 버튼 테두리 없애기 */
	border-radius: 5px; /* 버튼 테두리 둥글게 설정 */
	background-color: #007bff; /* 버튼 배경색 설정 */
	color: white; /* 버튼 글자색 설정 */
	cursor: pointer; /* 커서 모양 변경 */
}
.image{
	width: 90%;
    height:400px;
    margin-left: 50px;

}
.preload {

      transition: none !important;

      -webkit-transition: none !important;

      -moz-transition: none !important;

      -ms-transition: none !important;

      -o-transition: none !important;

    }
</style>
</head>
<body class="preload">
	<div class="container">
		<form id="start-quiz-form" action="showQuiz" method="post">
			
			
			<img src="resources/images/퀴즈.webp" alt="영차" class="image"> <br> <br>
			<!-- 사용자 ID 입력 -->
			<label for="mb_id"></label><br>
<input type="hidden" id="mb_id" name="mb_id" value="${sessionScope.loginMember.mb_id}" readonly>
			<label for="mb_nick" style="display: block; text-align: center;">사용자 닉네임</label>
<input type="text" id="mb_nick" name="mb_nick" value="${sessionScope.loginMember.mb_nick}" readonly style="width: 300px; margin: 0 auto; text-align: center;">
			<br>
			<br>
			<button type="submit" class="btn btn-primary btn-lg" style="background: #2E9AFE; border:none">오늘의 퀴즈 풀기</button>
			<br>
			<br>
			<button formaction="goquizRanking" formmethod="post" class="btn btn-primary btn" style="background: #2E9AFE; border:none">랭킹보기</button>	
		</form>
	</div>
	
	<script type="text/javascript">
		$(window).load(function(){
	
		      $('body').removeClass('preload')
	
		})
	</script>
</body>
</html>