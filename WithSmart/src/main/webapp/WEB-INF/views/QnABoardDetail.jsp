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
 	 width: 100px;
 	 border-radius: 10px;
 	 color:red;
 	 border:none;
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
      <div class="row justify-content-center align-items-stretch">
        
       
        <article class="col-lg-8 order-lg-2 px-lg-5" style="border:10px solid #A9E2F3; padding:10px; margin-top:50px; border-radius:10px; box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.3);">
    
	    	
	     <!-- 게시글 가져오기  -->
	    	
	    <div style="margin-top: 50px" id="QnAboard">	
	    
	    <table id="list">
	    
	       	  <tr>
	          	<td>제목</td>
	          	<td><h2>${qnaboard.title }</h2></td>
	          </tr>
	          <tr>
	          	<td>작성자</td>
	          	<td>${qnaboard.writer }</td>
	          </tr>
	          
	          <tr>
				<td>다운로드</td>
				<td><a href="resources/image/${qnaboard.filename }" download>${qnaboard.filename}</a></td>
			  </tr>
	          
	          <tr>
	          	<td colspan="2">내용</td>
	          </tr>
	          <tr>	
	          	<td colspan="3" style="border: 3px solid #BDBDBD; width:1000px; height:600px; border-radius:10px; padding: 30px">
	          		<img alt="" src="resources/image/${qnaboard.filename}"> 
	          		<br>
	          		<h4 style="margin-top: 20px; font-size:15px">${qnaboard.content }</h4>
	          		
	          	</td>
	          	  
	          </tr>
		</table>
		 <c:if test="${qnaboard.writer eq loginMember.mb_nick }">
       		<button button class="btn btn-primary btn-md" style="background: #2E9AFE; border:none" onclick="location.href='goQnAUpdate?qnaboard_idx=${qnaboard.qnaboard_idx}'">수정하기</button>
       		<button button class="btn btn-primary btn-md" style="background: #2E9AFE; border:none" onclick="location.href='deleteQBoard?qnaboard_idx=${qnaboard.qnaboard_idx}'">삭제하기</button>
       	</c:if>
		</div>


		<!-- 답글 보기  -->

			<div class="pt-5">
			<hr>
			    <h3 class="mb-5">댓글</h3>
			    <ul class="comment-list">
			        <c:forEach items="${qc_list}" var="qc" varStatus="qcs">
			            <li class="comment">
			                <div class="comment-body">
			                    <!-- 답글 단 회원 이름 가져오기  -->
			                    <h3>${qc.writer}</h3>
			                    <!-- 답글 단 시간 가져오기 -->  
			                    <div class="meta">${qc.writetime}</div>
			                    <!-- 답글 내용 가져오기  --> 
			                    <span>${qc.cmtcontent }</span>
			                    
			                    <span><button class="lovebt" onclick="location.href='Qboardcommentheart?cmt_idx=${qc.cmt_idx}&qnaboard_idx=${qnaboard.qnaboard_idx}'">좋아요♥ ${qc.heartcount}</button></span>
			                </div>
			            </li>
			        </c:forEach>
			    </ul>
			</div>
	       
              <!-- END comment-list -->
              
              
              <!-- 댓글 남기기 입력 폼 -->
              <div class="comment-form-wrap pt-5">
                <h3 class="mb-5">댓글 남기기</h3>
                	<form action="QnABoardComment" method="post">
	                  	<div class="form-group">
	                    <label for="nick">닉네임</label>
	                    <input type="text" class="form-control" name="writer" readonly value="${loginMember.mb_nick}">
	                  </div>
	                  <div>
	                  	   <input type="hidden" name="qnaboard_idx" value="${qnaboard.qnaboard_idx}">
	                  </div>
	                  <div class="form-group">
	                    <label for="message">댓글</label>
	                    <textarea name="cmtcontent" id="message" cols="30" rows="5" class="form-control" placeholder="내용을 입력해주세요. 욕설과 비방은 정지 사유 대상입니다."></textarea>
	                  </div>
	                  
	                  <div class="form-group">
	                    <input type="submit" value="댓글달기" style="background: #2E9AFE; border:none; color:white" class="btn btn-primary btn-md" name="#">
	                  	
	                  	<!--뒤로 가기 (게시판 메인페이지로 이동)  -->
	                  	<input type="button" class="btn btn-primary btn-md" style="background: #2E9AFE; border:none; color:white" onclick="location.href='goQnABoard'" value="뒤로가기"></input>
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