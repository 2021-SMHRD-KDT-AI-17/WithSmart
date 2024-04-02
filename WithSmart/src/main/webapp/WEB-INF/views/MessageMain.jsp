<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="java.util.List"%>
<%@page import="kr.smhrd.entity.Message"%>
<%@page import="kr.smhrd.entity.Member"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>쪽지</title>
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
	.container {
	margin-top: 100px; /* 위 여백 설정 */
}
	form {
		text-align: center; /* 폼 내부 요소 가운데 정렬 */
	}
</style>
</head>
<body>
<%@ include file="./header.jsp"%>
	<div class="container">
		<form action="messageSend" method="post">
			<div class="field half first">
				<label for="name">보내는사람</label>
				<%if(loginMember == null){ %>
					<input type="text" name="sendE" id="name" placeholder="보내는 사람 이메일" />
				<%}else{ %>
					<input type="text" name="sendE" value="<%=loginMember.getMb_id() %>" id="mb_id" readonly/>
				<%} %>
			</div>
			<div class="field half">
				<label for="email">받는사람</label>
				<input type="text" name="receiveE" id="email" placeholder="받는 사람 이메일" onclick="getEamil()"/>
				<li><span id="resultEmailCheck"></span></li>
			</div>

			<div class="field">
				<label for="message">메세지 내용</label>
				<textarea  id="message" name="message" rows="6"></textarea>
			</div>
			<ul class="actions">
				<input type="submit" value="메시지 보내기" class="special" onclick="location.href='goMessageCheck'">
				<input type="reset" value="초기화" />
			</ul>
				
		</form>
	</div>
</body>
</html>