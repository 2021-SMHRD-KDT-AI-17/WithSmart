<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- /*
* Template Name: Append
* Template Author: Untree.co
* Tempalte URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
<!DOCTYPE html>
<head>
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

  <title>WithSmart</title>
</head>
<body>
	<%-- <%-- <%
		// 로그인한 사용자의 세션 가지고오기
		Member loginMember = (Member)session.getAttribute("loginMember");
		
	%> --%>


  <!-- header 파일 불러오기  --> 
 <%@ include file = "./header.jsp" %>
    
    

	<!-- 배경 사진 삽입  -->
  <div class="hero-slant overlay" data-stellar-background-ratio="0.5" style="background-image: url('resources/images/hero-min.jpg'); background-position: 0% 0px";>

         
      <!-- 화면 소개 및 회원가입/로그인 하기  -->   
      <div class="container">
        <div class="row align-items-center justify-content-between">
          <div class="col-lg-7 intro">
            <h1 class="text-white font-weight-bold mb-4" data-aos="fade-up" data-aos-delay="0">안녕하세요! <br> WithSmart 입니다.</h1>
            <p class="text-white mb-4" data-aos="fade-up" data-aos-delay="100"> 스마트인재 개발원 수강생과 수료생들을 위한 서비스입니다. <br> 회원가입 후 서비스를 이용해보세요!</p>
           	<button class="btn btn-primary" ><a href ="goJoin" , style ='color:white' >회원가입  / 로그인 </a></button>
           
           <!--  <form action="#" class="sign-up-form d-flex" data-aos="fade-up" data-aos-delay="200">
              <input type="text" class="form-control" placeholder="이메일을 입력해주세요">
              <input type="submit" class="btn btn-primary" value="회원가입">
            </form>
           -->
          </div>   
        </div>        
      </div>

      <div class="slant" style="background-image: url('resources/images/slant.svg');"></div>
    </div>
    
 
 	<!-- footer 파일 불러오기 -->
    <%@ include file="./footer.jsp" %>

    <div id="overlayer"></div>
    <div class="loader">
      <div class="spinner-border" role="status">
        <span class="sr-only">Loading...</span>
      </div>
    </div>

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