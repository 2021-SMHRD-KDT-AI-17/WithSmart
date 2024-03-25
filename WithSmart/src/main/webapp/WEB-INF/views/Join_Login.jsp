<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</head>
<body>

   <!-- header 파일 불러오기  --> 
 <%@ include file = "./header.jsp" %>
 
    
    <div class="hero-slant overlay" data-stellar-background-ratio="0.5" style="background-image: url('resources/images/hero-min.jpg'); background-position: 0% 0px";>

          
      <div class="container">
        <div class="row align-items-center justify-content-between">
          <div class="col-lg-7 intro">
            <h1 class="text-white font-weight-bold mb-4" data-aos="fade-up" data-aos-delay="0">WithSmart.</h1>
            <h3 class="text-white mb-4" data-aos="fade-up" data-aos-delay="100"><strong>회원가입</strong></h3>
            
            <!-- 회원가입 정보 입력 form  -->
            <form action="#" class="sign-up-form d-grid" data-aos="fade-up" data-aos-delay="200" method ="post">
              <input type="text" class="form-control" placeholder="이메일을 입력해주세요"><br>
              <input type="password" class="form-control" style="margin-bottom:20px" placeholder="비밀번호를 입력해주세요">
              <input type="text" class ="form-control" style = "margin-top:10px" placeholder ="닉네임을 입력해주세요">
              <input type="text" class ="form-control" style = "margin-top:10px" placeholder ="인증번호를 입력해주세요">
              <input type="submit" class="btn btn-primary" style="margin-top:30px"value="회원가입">
              <input type="submit" class="btn btn-primary" style="margin-top:30px"value="카카오 회원가입">
              
            </form>
          
          <br><br>
          
          <!-- 로그인  -->
      		<h3 class="text-white mb-4" data-aos="fade-up" data-aos-delay="100"><strong>로그인</strong></h3>
				<form action="goLogin" class="sign-up-form d-grid" data-aos="fade-up" data-aos-delay="200" method ="post">
				<input type="text" class="form-control" placeholder="이메일을 입력하세요" name="email">
				<input type="password" class="form-control"  placeholder="비밀번호를 입력하세요" name="pw">
				<input type="submit" class="btn btn-primary" style="margin-top:20px"value="로그인">
				<input type="submit" class="btn btn-primary" style="margin-top:20px"value="카카오 로그인">
    
    
          </div>   
        </div>        
      </div>

      <div class="slant" style="background-image: url('resources/images/slant.svg');"></div>
    </div>
    
    
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