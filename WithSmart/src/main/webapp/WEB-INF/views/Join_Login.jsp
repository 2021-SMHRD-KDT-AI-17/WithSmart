<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="kr.smhrd.entity.Member" %>
<!DOCTYPE html>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="author" content="Untree.co">
  <link rel="shortcut icon" href="favicon.png">

  <meta name="description" content="" />
  <meta name="keywords" content="bootstrap, bootstrap4" />


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

<html>
<head>
<meta charset="UTF-8">
<title>WithSmart</title>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
</head>
<body>
	<script>
		Kakao.init('84d9c6f5e18014eec71252d1b8479107'); //발급받은 키 중 javascript키를 사용해준다.
		console.log(Kakao.isInitialized()); // sdk초기화여부판단
		//카카오로그인
		function kakaoLogin() {
		    Kakao.Auth.login({
		      success: function (response) {
		        Kakao.API.request({
		          url: '/v2/user/me',
		          success: function (response) {
		        	  alert("로그인 성공!")
		        	  console.log(response)
		          },
		          fail: function (error) {
		        	 	alert("로그인 실패!")
		            console.log(error)
		          },
		        })
		      },
		      fail: function (error) {
		        console.log(error)
		      },
		    })
		  }
		//카카오로그아웃  
		function kakaoLogout() {
		    if (Kakao.Auth.getAccessToken()) {
		      Kakao.API.request({
		        url: '/v1/user/unlink',
		        success: function (response) {
		        	console.log(response)
		        },
		        fail: function (error) {
		          console.log(error)
		        },
		      })
		      Kakao.Auth.setAccessToken(undefined)
		    }
		  }
	</script>

   <!-- header 파일 불러오기  --> 
 <%@ include file = "./header.jsp" %>
 
    
    <div class="hero-slant overlay" data-stellar-background-ratio="0.5" style="background-image: url('resources/images/hero-min.jpg'); background-position: 0% 0px";>

          
      <div class="container">
        <div class="row align-items-center justify-content-between">
          <div class="col-lg-7 intro">
            <h1 class="text-white font-weight-bold mb-4" data-aos="fade-up" data-aos-delay="0">WithSmart</h1>
            <h3 class="text-white mb-4" data-aos="fade-up" data-aos-delay="100"><strong>회원가입</strong></h3>
            
            <!-- 회원가입 정보 입력 form  -->
            <form action="memberInsert" class="sign-up-form d-grid" data-aos="fade-up" data-aos-delay="200" method ="post">
	            <input type="text" class="form-control" placeholder="이메일을 입력해주세요" name="mb_id"  id="inputE">
	            <input type="button" class="btn btn-primary" value="Email 중복체크" onclick="checkE()">
	            <span id="resultCheck"></span>
	            <input type="password" class="form-control" style="margin-bottom:20px" placeholder="비밀번호를 입력해주세요" name="mb_pw">
	            <input type="text" class ="form-control" style = "margin-top:10px" placeholder ="닉네임을 입력해주세요" name="mb_nick">
	            <input type="text" class ="form-control" style = "margin-top:10px" placeholder ="인증번호를 입력해주세요" name="mb_cert" id="inputC">
	            <input type="button" class="btn btn-primary" value="인증번호 확인" onclick="checkC()">
	            <div id="certCheck"></div>
	            <input type="submit" class="btn btn-success" style="margin-top:10px" value="회원가입" width="500">
            </form>
          
          <br><br>
          
          <!-- 로그인  -->
      		<h3 class="text-white mb-4" data-aos="fade-up" data-aos-delay="100"><strong>로그인</strong></h3>
				<form action="goLogin" class="sign-up-form d-grid" data-aos="fade-up" data-aos-delay="200" method ="post">
					<input type="text" class="form-control" placeholder="이메일을 입력하세요" name="mb_id">
					<input type="password" class="form-control"  placeholder="비밀번호를 입력하세요" name="mb_pw">
					<input type="submit" class="btn btn-success" style="margin-top:20px"value="로그인">
					<br><br>
					<span onclick="kakaoLogin();">
				      <a href="javascript:void(0)">
				          <img src="https://k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg" width="200"
											alt="카카오 로그인 버튼" />
				      </a>
					</span>
					<span onclick="kakaoLogout();">
				      <a href="javascript:void(0)">
				      	<button class="btn btn-warning"><a href="goMain">카카오 로그아웃</a></button>
				      </a>
					 </span>
					<br>
					<!-- <span onclick="kakaoLogout();">
				      <a href="javascript:void(0)">
				      	<input type="submit" class="btn btn-warning"value="카카오 로그아웃">
				          <button>카카오 로그아웃</button>
				      </a>
					</span> -->
					
				</form>
    
    
          </div>   
        </div>        
      </div>

      <div class="slant" style="background-image: url('resources/images/slant.svg');"></div>
    </div>
    <script type="text/javascript">
    function checkC(){
		var inputC = $('#inputC').val()
		console.log(inputC)
		
		$.ajax( 
			{
				url : 'certCheck',
				data : {'inputC' : inputC},
				type : 'get',
				success : function(data){
					if(data==1){
						$('#certCheck').text('인증번호가 확인되었습니다.')
					}else{
						$('#certCheck').text('등록되지 않은 인증번호입니다.')
					}
				},
				error : function(){
					alert("통신실패")
				}
			}
		)
	}
    
    function checkE(){
		var inputE = $('#inputE').val()
		console.log(inputE)
		
		$.ajax( 
			{
				url : 'emailCheck',
				data : {'inputE' : inputE},
				type : 'get',
				success : function(data){
					if(data==1){
						$('#resultCheck').text('사용 가능한 이메일')
					}else{
						$('#resultCheck').text('중복된 이메일')
					}
				},
				error : function(){
					alert("통신실패")
				}
			}
		)
	}
   
    
    
    </script>
    
 	<!-- footer 파일 불러오기 -->
    <%@ include file="./footer.jsp" %>
    
    
	<!--script  -->
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