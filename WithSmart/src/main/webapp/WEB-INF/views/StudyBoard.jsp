<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="author" content="Untree.co">
  <link rel="shortcut icon" href="favicon.png">

  <meta name="description" content="" />
  <meta name="keywords" content="bootstrap, bootstrap4" />


	<!-- 부트스트랩 css 적용  -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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
<style type="text/css">
	
	.board{
		
		justify-content: center;
		align-items: center;
		margin-top: 100px;
		margin-left: 500px;
		width: 1000px;
		
	}
	
	.table-responsive{
		width: 700px;
		margin-top: 200px;
	
		
	}
	.btn{
		align-content: right;
	}
	
</style>
</head>
<body>

	<%-- <%
		// 로그인한 사용자의 세션 가지고오기
		Member loginMember = (Member)session.getAttribute("loginMember");
		
	%> --%>


<!-- header 파일 불러오기 -->
    <%@ include file="./header.jsp" %>   


        <div class="board">
        	
    	<!-- 스터디 게시판 작성글 목록 불러오기  -->
    	<!-- <div id="board">
				<table id = "list">
					<tr>
						<td>번호</td>
						<td>제목</td>
						<td>작성자</td>
						<td>시간</td>
						<td>조회수</td>
					</tr>

					<tr>
						<td>1</td>
						<td><a href ="#" >제목 불러오기</a></td>
						<td>작성자 불러오기</td>
						<td>작성 시각 불러오기</td>
						<td>조회수 불러오기</td>
						<td><a href="#">삭제</a></td>						
					</tr>
					
				</table> -->
				
				
				<div class="table-responsive">
										
	                <div class ="btn">
						<a href="goMain"><button class="btn btn-primary" id="writer">홈으로 가기</button></a>
	                	<a href="goStudyBoardWrite"><button type="button" class="btn btn-primary">글 작성하기</button></a>
	                </div>
					
  					<table class="table">
					  <thead>
					    <tr>
					      <th scope="col">No</th>
					      <th scope="col">제목</th>
					      <th scope="col">작성자</th>
					      <th scope="col">작성일</th>
					      <th scope="col">조회수</th>
					      <th scope="col">추천수</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr>
					      <th scope="row">1</th>
					      <td><a href="goStudyBoardDetail">제목1</a></td>
					      <td>닉네임</td>
					      <td>작성일</td>
					      <td>11</td>
					      <td>11</td>
					    </tr>
					    <tr>
					      <th scope="row">2</th>
					      <td><a href="goStudyBoardDetail">제목2</a></td>
					      <td>닉네임</td>
					      <td>작성일</td>
					      <td>11</td>
					      <td>11</td>
					    </tr>
					    <tr>
					      <th scope="row">3</th>
					      <td><a href="goStudyBoardDetail">제목3</a></td>
					      <td>닉네임</td>
					      <td>작성일</td>
					      <td>11</td>
					      <td>11</td>
					    </tr>
					    
					  </tbody>
    
  					</table>
				</div>
			
        </div>
      

    

    
<!--	 배경사진 삽입         

<div class="hero-slant overlay" data-stellar-background-ratio="0.5" style="background-image: url('resources/images/img_h_7-min.jpg'); background-position: 0% 0px";>
 -->   
    
    	
    	
    
   
   
	
    		
	
    	
    
    
   
    
    <!--  <div class="container">
        <div class="row align-items-center justify-content-between">
          <div class="col-lg-7 intro">
            <p class="text-white font-weight-bold mb-4" data-aos="fade-up" data-aos-delay="0">환영합니다! <br> 님! </p> -->
    
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