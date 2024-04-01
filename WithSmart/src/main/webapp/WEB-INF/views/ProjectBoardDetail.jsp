<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

table {
  border-collapse: separate; /* 셀 테두리를 분리하도록 설정 */
  border-spacing: 20px; /* 행과 열 사이의 간격 설정 */
}

 .lovebt{
 	 margin-left: 10px; 
 	 width: 30px;
 	 border-radius: 10px;
 	 color:red;
 	 border:none;
 }

/* 	."col-lg-8 order-lg-2 px-lg-5"{
	border: 1px solid #000; 
	padding: 10px; 
	margin-top:30px; 
	border-radius:10px;
	} */

/* 	.content{
		background-color:#f0efef;
		padding:20px;
		border-radius:10px;
	} */

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
      <div class="row justify-content-center align-items-stretch">
        
       
        <article class="col-lg-8 order-lg-2 px-lg-5" style="border:10px solid #A9E2F3; padding:10px; margin-top:50px; border-radius:10px; box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.3);">
   <!--  <article class="col-lg-8 order-lg-2 px-lg-5" style="padding: 10px; margin-top: 50px; border-radius: 10px; box-shadow: inset 0 0 10px rgba(0,0,0,0.3); background: linear-gradient(to right, #A9E2F3, #FFFFFF);"> -->
    
	    	
	    <!-- 게시글 가져오기  -->
	    	
	    <div style="margin-top: 40px" id="Projectboard">	
 		<table id="list">
	       	  <tr class="separator">
	          	<td>제목</td>
	          	<td><h2>${projectboard.title }</h2></td>
	          </tr>
	         
	          <tr>
	          	<td>작성자</td>
	          	<td>${projectboard.writer }</td>
	          </tr>
	          
	          <tr>
				<td>다운로드</td>
				<td><a href="resources/image/${projectboard.filename }" download>${projectboard.filename}</a></td>
			  </tr>
	          
	          <tr>
	          	<td colspan="2">내용</td>
	          </tr>
	          <tr>	
	          	<td colspan="3" style="border: 3px solid #BDBDBD; width:1000px; height:600px; border-radius:10px; padding: 30px">
	          	<img alt="" src="resources/image/${projectboard.filename}"> 
	          	<br>
	          		<h4 style="margin-top: 20px; font-size:15px">${projectboard.content }</h4>
	          		
	          	</td>
	          	  
	          </tr>
		</table>

		</div>


		<!-- 답글 보기  -->

            <div class="pt-5">
            <hr>
			    <h3 class="mb-5">댓글</h3>
			    <ul class="comment-list">
			        <c:forEach items="${pc_list}" var="pc" varStatus="pcs">
			            <li class="comment">
			                <div class="comment-body">
			                    <!-- 답글 단 회원 이름 가져오기  -->
			                    <h3>${pc.writer}</h3>
			                    <!-- 답글 단 시간 가져오기 -->  
			                    <div class="meta">${pc.writetime}</div>
			                    <!-- 답글 내용 가져오기  --> 
			                   <%--  <p>${pc.cmtcontent }<button class="btn btn-info" style="margin-left: 30px; width: 100px">♥</button></p> --%>
			                    <p>${pc.cmtcontent }<button class="lovebt">♥</button></p>
			                    <!-- 부트스트랩 아이콘 가져옴 -->
			                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-emoji-heart-eyes" viewBox="0 0 16 16">
			                        <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16"/>
			                        <path d="M11.315 10.014a.5.5 0 0 1 .548.736A4.5 4.5 0 0 1 7.965 13a4.5 4.5 0 0 1-3.898-2.25.5.5 0 0 1 .548-.736h.005l.017.005.067.015.252.055c.215.046.515.108.857.169.693.124 1.522.242 2.152.242s1.46-.118 2.152-.242a27 27 0 0 0 1.109-.224l.067-.015.017-.004.005-.002zM4.756 4.566c.763-1.424 4.02-.12.952 3.434-4.496-1.596-2.35-4.298-.952-3.434m6.488 0c1.398-.864 3.544 1.838-.952 3.434-3.067-3.554.19-4.858.952-3.434"/>
			                    </svg>
			                    <span>${pc.heartcount}</span>
			                    <hr>
			                </div>
			                
			            </li>
			        </c:forEach>
			    </ul>
			</div>

              <!-- END comment-list -->
              
              
              <!-- 댓글 남기기 입력 폼 -->
              <div class="comment-form-wrap pt-5">
              <hr>
                <h3 class="mb-5">댓글 남기기</h3>
                	<form action="ProjectBoardComment" method="post">
	                  	<div class="form-group">
	                    <label for="nick">닉네임 *</label>
	                    <input type="text" class="form-control" name="writer" readonly value="${loginMember.mb_nick}">
	                  </div>
	                  <div>
	                  	   <input type="hidden" name="projectboard_idx" value="${projectboard.projectboard_idx}">
	                  </div>
	                  <div class="form-group">
	                    <label for="message">댓글</label>
	                    <textarea name="cmtcontent" id="message" cols="30" rows="5" class="form-control" placeholder="내용을 입력해주세요. 욕설과 비방은 정지 사유 대상입니다."></textarea>
	                  </div>
	                  
	                  <div class="form-group">
	                    <input type="submit" value="댓글달기" class="btn btn-primary btn-md" name="#">
	                  	
	                  	<!--뒤로 가기 (게시판 메인페이지로 이동)  -->
	                  	<button class="btn btn-primary btn-md" style="background: #2E9AFE; border:none"><a href="goProjectBoard" style="color:white; float: right">뒤로가기</a></button>
	                  	<button class="btn btn-primary btn-md" style="background: #2E9AFE; border:none"><a href="#" style="color:white; float: right">글 삭제</a></button>
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