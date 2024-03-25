<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- /*
* Template Name: Append
* Template Author: Untree.co
* Tempalte URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->    
    
    
<!DOCTYPE html>
<html>
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
  

<meta charset="UTF-8">
<title>WithSmart</title>
</head>
<body>

  <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close">
          <span class="icofont-close js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
    
    <div class="container">

	<!--nav 바 시작  -->
      <nav class="site-nav">
        <div class="logo">
          <a href="goMain" class="text-black">WithSmart<span class="text-black">.</span></a>
        </div>
        <div class="row align-items-center">
          
     <!-- 홈, 게시판, 점심 고르기, 채팅 선택 바  -->
          <div class="col-12 col-sm-12 col-lg-12 site-navigation text-center" >
            <ul class="js-clone-nav d-none d-lg-inline-block text-left site-menu" class="text-black">
              
               <!-- 로그인한 사용자 닉네임 표시 -->
             <li margin-right:"50px"><p class="text-black font-weight-bold mb-4" data-aos-delay="0"> 님 </p></li>
              <li class="active"><a href="goMain" class="text-black">홈</a></li>
              <li class="has-children">
                <a href="#" class="text-black">자유게시판</a>
                <ul class="dropdown">
                  <li><a href="goStudyBoard" class="text-black">스터디게시판</a></li>
                  <li><a href="#" class="text-black">친목게시판</a></li>
                  <li><a href="#" class="text-black">프로젝트게시판</a></li>
                  <li><a href="#" class="text-black">질문게시판</a></li>
                </ul>
              </li>
           
               <li><a href="#" class="text-black">애로 및 건의사항 게시판</a></li>
               
               <li class="has-children">
             	<a href="#" class="text-black">채용공고 및 공모전 게시판</a>
                    <ul class="dropdown">
                      <li><a href="#">채용공고</a></li>
                      <li><a href="#">공모전</a></li>
					</ul>
               </li>
               
               <li><a href ="#" class="text-black">점심메뉴 고르기</a>
               <li><a href ="#" class="text-black">오늘의 퀴즈</a>
               <li><a href ="#" class="text-black">채팅</a>
                
                <!-- 로그인 성공시 보이는 메뉴  -->
               <li class="has-children">
                <a href="#" class="text-black">마이페이지</a>
                <ul class="dropdown">
                  <li><a href="#">정보수정</a></li>
                  <li><a href="#">로그아웃</a></li>
                </ul>
              </li>
                             
            </ul>
            

            <a href="#" class="burger light ml-auto site-menu-toggle js-menu-toggle d-block d-lg-none" data-toggle="collapse" data-target="#main-navbar">
              <span></span>
            </a>

          </div>

        </div> 
         
      </nav> <!-- END nav -->

    </div> <!-- END container -->

	
	
	  <div class="container pb-5 mb-5 border-bottom" style="margin-top: 280px">
	
    <div class="row">
      <div class="col-lg-12" >
        <h1 class="h6 mb-3 text-black"></h1>
      </div>
      <div class="col-lg-7">
		
        <h1 class="h6 mb-3 text-black" style ="margin-bottom: 150px"><strong>게시글 작성</strong></h1>
      
     	 <!-- 글 작성 입력 폼 -->
        <form action ="#" method ="">
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
              <!--  글 제목 입력  -->
                <label class="text-black" for="fname">제목</label>
                <input type="text" class="form-control" id="fname">
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
              <!-- 작성자 입력  -->
                <label class="text-black" for="lname">작성자</label>
                <input type="text" class="form-control" id="lname">
              </div>
            </div>
          </div>
     <!--      <div class="form-group">
            <label class="text-black" for="email"></label>
            <input type="email" class="form-control" id="email" aria-describedby="emailHelp">
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
          </div>
       -->
          <div class="form-group">
            <!--글 내용 입력  -->
            <label class="text-black" for="message">내용</label>
            <textarea name="" class="form-control" id="message" cols="30" rows="10"></textarea>
          </div>
        
      
          <button type="submit" class="btn btn-primary"><a href="goStudyBoard" style="color: white">작성하기</a></button>
        </form>
      </div>
    </div>
  </div>
	
	<div id="overlayer"></div>
	    <div class="loader">
	      <div class="spinner-border" role="status">
	        <span class="sr-only">Loading...</span>
	      </div>
	    </div>



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