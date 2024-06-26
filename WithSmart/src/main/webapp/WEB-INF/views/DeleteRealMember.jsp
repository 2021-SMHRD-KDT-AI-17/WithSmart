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
      margin-top: 300px;
      margin-left: 300px;
      margin-right : 500px;
      width: 1000px;
      
   }
   @media (max-width: 992px) {
      .board {
            margin-left: 50px;
            margin-right: 50px;
            width: auto;
       }
    }
   
    @media (max-width: 1900px) {
        .board {
            margin-left: 20px;
            margin-right: 20px;
        }

        .table-responsive {
            width: 100%;
        }
        
        .btn_login{
        	width: 100%;
        }
    }
   
   /* .table-responsive{
      width: 1200px;
      margin-top: 150px;
   
      
   } */
   .btn{
      display: inline-block;
      float: right;
      margin: 0 5px 0 30px;
   }
   
   .bottom_num{
      margin-right: 200px; 
      
   }
   
   #Update{
/*         display: block;   */
        /* background: linear-gradient(45deg, white, #c9f1c0); */
      font-size: 20px;
/*       border:1px solid #000000;
      border-radius: 30px 30px 30px 30px; */
      /* background-size: cover; */
      /* padding: 20px; */
       /* width: 100%;  */
   }
   
</style>
</head>
<body>

   <%
      
      String mb_nick = (String)request.getAttribute("mb_nick");
      
   %>


<!-- header 파일 불러오기 -->
    <%@ include file="./header.jsp" %>   

	<!-- 	 배경사진 삽입  -->        

        <div class="board">
             
         <div class="table-responsive">
                              
                   <!-- <div class ="btn">
                  <a href="goMain"><button class="btn btn-primary" id="writer">홈으로 가기</button></a>
                   </div> -->
               <!-- Wrapper -->
                  <div id="wrapper">
                     <!-- Menu -->
                        <div id="Update">   
                           <ul class="actions vertical">
                              <br>
                              <div><h1> 안녕히가세요. </h1></div>
                              <br>
                              <br>
                              <!-- Q2. 회원가입 한 회원정보 중 이메일을 출력하시오.(request영역 활용) -->
                              <div>회원탈퇴가 완료되었습니다.</div>
                              <div><strong>위드스마트</strong>를 사랑해주셔서 감사합니다.</div>
                              <br>
                              <!-- <div id=loginButton><button onclick='location.href="goJoin"'>로그인 하러가기</button></div> -->
                              
                              <div class="btn_login"><button class="btn btn-primary" display :inline-block; style="background: #2E9AFE; border:none" ><a href ="memberLogout", style ='color:white' >홈으로 가기</a></button></div>
                              <br>
                              
                           </ul>
                           
                        </div>         
                  </div>
                 
            </div>
    
        </div>
      

    
<!--    배경사진 삽입         

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