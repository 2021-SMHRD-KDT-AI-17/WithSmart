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
	margin-top: 200px; /* 위 여백 설정 */
}
	form {
		text-align: center; /* 폼 내부 요소 가운데 정렬 */
	}
	
	@media (max-width: 992px) {
        .container {
            margin-left: 50px;
            margin-right: 50px;
            width: auto;
        }
    }

    @media (max-width: 768px) {
       .btn {
            float: none;
            margin-right: 0;
            margin-top: 10px;
        }

        .form-group {
            margin-bottom: 15px;
        }
    }
	
	.btn{
		display: inline-block;
		float: right;
		margin: 10px 5px 0 30px;
	}

	.form-group{
		margin-bottom: 20px;
	}
	
	.text-black{
		font-size: 20px;
	}
	
</style>
</head>
<body>
<%@ include file="./header.jsp"%>
	<div class="container">
	<h1 class="h6 mb-3 text-black"style ="font-size: 40px; margin-top: 20px; margin-left:500px;"><strong>쪽지 쓰기</strong></h1>
		<form action="messageSend" method="post">
			<div class="field half first">
				<label for="name" class="text-black">보내는사람</label>
				<%if(loginMember == null){ %>
					<input type="text" name="sendE" id="name" placeholder="보내는 사람 이메일" />
				<%}else{ %>
					<input type="text" name="sendE" value="<%=loginMember.getMb_id() %>" id="mb_id" readonly/>
				<%} %>
			</div>
			<div class="field half">
				<label for="email" class="text-black">받는사람</label>
				<input type="text" name="receiveE" id="mb_id" placeholder="받는 사람 이메일" onclick="getEmail()"/>
				<li><span id="resultEmailCheck"></span></li>
			</div>

			<div class="field">
				<label class="text-black" for="message">메세지 내용</label>
				<textarea id="message" name="message" cols="30" rows="10"></textarea>
			</div>
			<ul class="actions">
				<input type="submit" value="메시지 보내기" class="btn btn-primary"  style="background: #2E9AFE; border:none" onclick="location.href='goMessageCheck'">
				<input type="reset" class="btn btn-primary"  style="background: #2E9AFE; border:none" value="초기화" />
			</ul>
				
		</form>
	</div>
	
	
	
	
	<div id="overlayer"></div>
	    <div class="loader">
	      <div class="spinner-border" role="status">
	        <span class="sr-only">Loading...</span>
	      </div>
	  	</div>
	  	<iframe src='https://www.vchatcloud.com/chat-demo/iframe/iframe_pc/v4/index.html?
         channelKey=qgXMFEaTJL-HlUKiYICSx-20240402151009' frameborder='no' 
         scrolling='no' marginwidth='0' marginheight='0' width='500' height='900'></iframe>
	  	
	  	
	  	
	<script type="text/javascript">
		function getEmail(){
			$.ajax({
				url: 'getMemberEmail',
				success: function(res){
					console.log(res)
					let text = ""
					if(res.length>0){
						for(let i=0; i<res.length; i++){
							text+=res[i].mb_id
							
						}
					}$('#resultEmailCheck').text(text)
				},
				error : function(){
					alert("통신실패");
				}
			})
		}
		
		   function joinRoom(roomId, clientKey, nickName, callback) {
		       // vchatcloud 객체
		       channel = vChatCloud.joinChannel({
		           roomId: roomId,         // 채팅방ID(채널키)
		           clientKey: clientKey,   // 클라이언트 고유키 (유저 식별값)
		           nickName: nickName      // 채팅방에 입장한 유저 별명
		       }, function(error, history) {
		           $('div.entery, div.chatout, div.notice, div.whisper, div.content').remove();
		           if (error) {
		               if (callback) return callback(error, null);
		               return error;
		               /** error 정의
		                   0       SYSTEM_ERROR           시스템 에러 – 관리자에게 문의하세요.
		                   10101   USER_LIMIT_EXCEEDED       접속 인원이 초과되었습니다.
		                   10102   CHANNEL_NOT_EXISTED       존재하지 않는 채팅방입니다.
		                   10103   CHANNEL _BEFORE_OPENED   채팅방 개설시간 전입니다.
		                   10104   CHANNEL _AFTER_CLOSED   채팅방이 종료되었습니다.
		                   10105   ACTIVE_LIMIT_EXCEEDED   Active User 수를 초과했습니다.
		                   10106   CHANNEL_USER_BANED       추방된 유저입니다.
		                   10107   USER_NOT_EXISTED       접속하지 않은 유저입니다.
		                   10901   MISSING_REQURIED_PARAM   필수 파라미터 누락
		               */
		           }
		           if (callback) callback(null, history);
		           // 채팅영역에 글쓰기가 활성화될시 활성화
		           if (typeof write == 'function') write("실시간 채팅에 오신 것을 환영합니다. 개인정보를 보호하고 커뮤니티 가이드를 준수하는 것을 잊지 마세요!", 'notice');
		       })
		   }
		  	
		
		
		
	</script>
	
	
	
	
	<script src="resources/js/jquery-3.5.1.min.js"></script>
    <script src="resources/js/jquery-migrate-3.0.0.min.js"></script>
    <script src="resources/js/popper.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/owl.carousel.min.js"></script>
    <script src="resources/js/aos.js"></script>
    <script src="resources/js/resources/imagesloaded.pkgd.js"></script>
    <script src="resources/js/isotope.pkgd.min.js"></script>
    <script src="resources/js/jquery.animateNumber.min.js"></script>
    <script src="resources/js/jquery.stellar.min.js"></script>
    <script src="resources/js/jquery.waypoints.min.js"></script>
    <script src="resources/js/jquery.fancybox.min.js"></script>
    <script src="resources/js/custom.js"></script>
</body>
</html>