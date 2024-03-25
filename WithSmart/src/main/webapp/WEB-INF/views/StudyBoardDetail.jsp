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

      <!-- header 파일 불러오기  --> 
 <%@ include file = "./header.jsp" %>
 	
<!--     <div class="hero-slant overlay" data-stellar-background-ratio="0.5" style="background-image: url('resources/images/hero-min.jpg')">
 -->    
 
 	<!-- 게시판 상세 보기  -->
    <div class="site-section">
    <div class="container article">
      <div class="row justify-content-center align-items-stretch">
        
       
        <article class="col-lg-8 order-lg-2 px-lg-5">
    
	    	
	    <!-- 게시글 가져오기  -->
	    	
	    <div style="margin-top: 50px">	
	       <!--게시글 제목  -->
          <h3>On her way she met a copy</h3>
          <!-- 게시글 내용  -->
          <p>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
          <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
          <p>And if she hasnât been rewritten, then they are still using her.
          On her way she met a copy. The copy warned the Little Blind Text, that where it came from it would have been rewritten a thousand times and everything that was left from its origin would be the word "and" and the Little Blind Text should turn around and return to its own, safe country. </p>

          <p>But nothing the copy said could convince her and so it didnât take long until a few insidious Copy Writers ambushed her, made her drunk with Longe and Parole and dragged her into their agency, where they abused her for their.</p>

          <p>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.A small river named Duden flows by their place and supplies it with the necessary regelialia.And if she hasnât been rewritten, then they are still using her.</p>
		</div>


		<!-- 딥글 보기  -->

            <div class="pt-5">
              <h3 class="mb-5">댓글</h3>
              <ul class="comment-list">
                <li class="comment">
                  <div class="comment-body">
                  
                  <!-- 답글 단 회원 이름 가져오기  -->
                    <h3>Irish Smith</h3>
                    
                  <!-- 답글 단 시간 가져오기 -->  
                    <div class="meta">January 9, 2018 at 2:21pm</div>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                    </div>
                </li>

                <li class="comment">
                  <div class="comment-body">
                    <h3>Christine Stewart</h3>
                    <div class="meta">January 9, 2018 at 2:21pm</div>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
             
                  </div>
              
                </li>

              <!-- END comment-list -->
              
              
              <!-- 댓글 남기기 입력 폼 -->
              <div class="comment-form-wrap pt-5">
                <h3 class="mb-5">댓글 남기기</h3>
                	<form action="#" class="">
	                  	<div class="form-group">
	                    <label for="name">이름 *</label>
	                    <input type="text" class="form-control" id="name">
	                  </div>
	                  <div class="form-group">
	                    <label for="email">이메일 * </label>
	                    <input type="email" class="form-control" id="email">
	                  </div>
	                  <div class="form-group">
	                    <label for="message">답글</label>
	                    <textarea name="message" id="message" cols="30" rows="5" class="form-control"></textarea>
	                  </div>
	                  <div class="form-group">
	                    <input type="submit" value="답글달기" class="btn btn-primary btn-md">
	                  	
	                  	<!--뒤로 가기 (게시판 메인페이지로 이동)  -->
	                  	<button class="btn btn-primary btn-md"><a href="goStudyBoard" style="color:white">뒤로가기</a></button>
					  </div>			
	                </form>		  	
              </div>
            </div>
           
        </article>
        
        <div class="col-lg-3 mb-5 mb-lg-0 order-lg-3"> 
        </div>
      </div>
    </div>
  </div>
      <div class="slant" style="background-image: url('resources/images/slant-grey.svg');"></div>
    

    <div id="overlayer"></div>
    <div class="loader">
      <div class="spinner-border" role="status">
        <span class="sr-only">Loading...</span>
      </div>
    </div>
    
    <!-- footer 파일 불러오기 -->
    <%@ include file="./footer.jsp" %>   
    
    
    <!-- script  -->
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