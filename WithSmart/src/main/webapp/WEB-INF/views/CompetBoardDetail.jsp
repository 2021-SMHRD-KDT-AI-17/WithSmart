<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
  <!-- 부트스트랩 CDN   -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<meta charset="UTF-8">
<title>WithSmart</title>

<style>
		a:link {
		  color : blue;
		  text-decoration: none;
		}
		a:visited {
		  color : #f3928f;
		  text-decoration: none;
		}

		.date{
		font-size:25px;
		}
		
		.hplink{
		font-size:25px;
		}
		
		.content{
		background-color:#f0efef;
		padding:20px;
		border-radius:10px;
		}
		
		.imgalign{
		text-align:center;
		}
		
</style>

</head>

<body>

      <!-- header 파일 불러오기  --> 
 <%@ include file = "./header.jsp" %>
 	
<!--     <div class="hero-slant overlay" data-stellar-background-ratio="0.5" style="background-image: url('resources/images/hero-min.jpg')">
 -->    
 
 	<!-- 게시판 상세 보기  -->
    <div class="site-section">
    <div class="container article">
      <div class="row justify-content-center align-items-stretch";>
        
       
        <article class="col-lg-8 order-lg-2 px-lg-5">
    
	
		    <!-- 공모전 정보 DB에서 가져오기  -->
		    	
		    <div style="margin-top: 50px">	
		       	 	  <!--공모전명  -->
			          <h3>공모전명 : <strong>${cp_detail.compettitle}</strong></h3>
			          <hr></hr>
			          
			          <div class="content">
			          <br>
			          <!-- 공모전 내용  -->
			          <div class="imgalign">
			           <img src="${cp_detail.imglink}" alt="이미지" width="600" style="align:center;">
			           </div>
			           <br>
			           <br>
			           <hr></hr>
			           <span><strong>홈페이지 상세 링크 주소</strong></span>
			          <p><a href="${cp_detail.homelink}" target="_blank" class="hplink"><strong>[이곳을 클릭하세요]</strong></a></p>
			          <hr></hr>
			          <span><strong>기 간</strong></span> <br>
			          <span class="date"><strong> ${cp_detail.during}</strong></span>		
			          
			          </div>
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