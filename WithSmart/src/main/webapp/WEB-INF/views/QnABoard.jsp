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
		margin-left: 300px;
		margin-right : 500px;
		width: 1000px;
		
	}
	
	.table-responsive{
		width: 1200px;
		margin-top: 150px;
	
		
	}
	.btn{
		display: inline-block;
		float: right;
		margin: 0 5px 0 30px;
	}
	
	.bottom_num{
		margin-right: 200px; 
		
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
       
			<div class="table-responsive">
										
	                <div class ="btn">
						<a href="goMain"><button class="btn btn-primary" id="writer">홈으로 가기</button></a>
	                	<%if(loginMember ==null){ %>
							<a href="goJoin"><button type="button" class="btn btn-primary">글 작성하기</button></a>
						<%}else{ %>
							<a href="goQnABoardWrite"><button type="button" class="btn btn-primary">글 작성하기</button></a>
						<%} %>
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
					      <td><a href="goQnABoardDetail">제목1</a></td>
					      <td>닉네임</td>
					      <td>작성일</td>
					      <td>11</td>
					      <td>11</td>
					    </tr>
					    <tr>
					      <th scope="row">2</th>
					      <td><a href="goQnABoardDetail">제목2</a></td>
					      <td>닉네임</td>
					      <td>작성일</td>
					      <td>11</td>
					      <td>11</td>
					    </tr>
					    <tr>
					      <th scope="row">3</th>
					      <td><a href="goQnABoardDetail">제목3</a></td>
					      <td>닉네임</td>
					      <td>작성일</td>
					      <td>11</td>
					      <td>11</td>
					    </tr>
					    
					    <tr>
					      <th scope="row">4</th>
					      <td><a href="goQnABoardDetail">제목4</a></td>
					      <td>닉네임</td>
					      <td>작성일</td>
					      <td>11</td>
					      <td>11</td>
					    </tr>
					    
					    <tr>
					      <th scope="row">5</th>
					      <td><a href="goQnABoardDetail">제목5</a></td>
					      <td>닉네임</td>
					      <td>작성일</td>
					      <td>11</td>
					      <td>11</td>
					    </tr>
					    
					    <tr>
					      <th scope="row">6</th>
					      <td><a href="goQnABoardDetail">제목6</a></td>
					      <td>닉네임</td>
					      <td>작성일</td>
					      <td>11</td>
					      <td>11</td>
					    </tr>
					    
					    <tr>
					      <th scope="row">7</th>
					      <td><a href="goQnABoardDetail">제목7</a></td>
					      <td>닉네임</td>
					      <td>작성일</td>
					      <td>11</td>
					      <td>11</td>
					    </tr>
					    
					    <tr>
					      <th scope="row">8</th>
					      <td><a href="goQnABoardDetail">제목8</a></td>
					      <td>닉네임</td>
					      <td>작성일</td>
					      <td>11</td>
					      <td>11</td>
					    </tr>
					    
					  </tbody>
    
  					</table>
				</div>
			
			<!-- 부트스트랩 페이징 적용   -->
			<nav aria-label="Page navigation example" class="bottom_num">
			  <ul class="pagination justify-content-center">
			    <li class="page-item">
			      <a class="page-link" href="#" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			      </a>
			    </li>
			    <li class="page-item"><a class="page-link" href="#">1</a></li>
			    <li class="page-item"><a class="page-link" href="#">2</a></li>
			    <li class="page-item"><a class="page-link" href="#">3</a></li>
			    <li class="page-item">
			      <a class="page-link" href="#" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			      </a>
			    </li>
			  </ul>
			</nav>
    
        </div>
      

    
<!--	 배경사진 삽입         

<div class="hero-slant overlay" data-stellar-background-ratio="0.5" style="background-image: url('resources/images/img_h_7-min.jpg'); background-position: 0% 0px";>
 -->   
    
    	
    <div id="overlayer"></div>
    	<div class="loader">
      	<div class="spinner-border" role="status">
       		<span class="sr-only">Loading...</span>
      	</div>
    </div> 	
    	
    
     <div class="slant" style="background-image: url('resources/images/slant.svg');"></div>
   
    



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