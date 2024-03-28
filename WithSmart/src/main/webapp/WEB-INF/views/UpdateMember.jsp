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
		margin: 0 auto;
		margin-top: 150px;
		background-image: linear-gradient(45deg, #f0efef, white);
/* 		background-color:#f0efef; */
		padding:30px;
		border-radius: 30px 30px 30px 30px;
		
	}
	.btn{
		display: inline-block;
		float: right;
		margin: 0 5px 0 30px;

	}
	
	.bottom_num{
		margin-right: 200px; 
		
	}
	
	.buttonfit{
		display: inline-block;
		background-color:#e84545;
		border-color:#e84545;
		color:#ffffff;
		border-radius:3px;
		text-align:center;
		border:none;
		padding:15px;

	}
	
	.button-container{
	text-align:center;
	}
	

		
	
</style>
</head>
<body>


<!-- header 파일 불러오기 -->
    <%@ include file="./header.jsp" %>   


        <div class="board" >
       
			<div class="table-responsive">
										
	                
						<h2>회원정보수정</h2>
						<hr></hr>
						<br>
						<form action="memberUpdate" method="post">
							<div>이메일 정보 <input size= 20 readonly value="${loginMember.mb_id}"></div>
							<br>
	<%-- 						<div><input type="hidden" name="mb_id" value="${loginMember.mb_id }"></div> --%>
							
							<div style="color: #000000;">닉네임 변경   <input type="text" name="mb_nick" size= 20 placeholder="변경할 닉네임" value="${loginMember.mb_nick }"> </div>
							<%-- <div><input type="text" name="mb_nick" placeholder="닉네임를 입력하세요" value="${loginMember.mb_nick }"></div> --%>
							<br>
							
							<div style="color: #000000;">비밀번호 변경 <input type="password" name="mb_pw" size= 20 placeholder="새 비밀번호 입력" > </div>
							<%-- <div><input type="password" name="mb_pw" placeholder="비밀번호를 입력하세요" value="${loginMember.mb_pw }"></div> --%>
							<br>
							<br>
							<div class="button-container"><input type="submit" class="buttonfit" value="수정하기"></div> 
							<br>
							<br>
							<div class ="btn">
						<a href="goMain"><button class="btn btn-primary" id="writer" >홈으로 가기</button></a>
	              			  </div> 			
	  					</form>
				</div>
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