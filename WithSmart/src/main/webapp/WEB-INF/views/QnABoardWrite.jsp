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
<style>
	.container{
		margin-top: 140px;
		margin-left: 500px;
	
	}
	
	@media (max-width: 992px) {
        .container {
            margin-left: 50px;
            margin-right: 50px;
            width: auto;
        }
    }

    @media (max-width: 768px) {
       .btn {
            float: none;
            margin-right: 0;
            margin-top: 10px;
        }

        .form-group {
            margin-bottom: 15px;
        }
    }
	.btn{
		display: inline-block;
		float: right;
		margin: 10px 5px 0 30px;
	}

	.form-group{
		margin-bottom: 20px;
	}

	.text-black{
		font-size: 20px;
	}

</style>



</head>
<body>

 <!-- header 파일 불러오기 -->
    <%@ include file="./header.jsp" %>   
 

	
	
	 <div class="container" >
	
    <div class="row">
      <div class="col-lg-12" >
        <h1 class="h6 mb-3 text-black"></h1>
      </div>
      <div class="col-lg-7">
		
        <h1 class="h6 mb-3 text-black" style ="font-size: 40px; margin-top: 20px;"><strong>게시글 작성</strong></h1>
      
     	 <!-- 글 작성 입력 폼 -->
        <form action ="#" method ="">
          <div class="row" style ="margin-top: 50px">
            <div class="col-md-6">
              <div class="form-group">
              <!--  글 제목 입력  -->
                <label class="text-black" for="fname">제목</label>
                <input type="text" class="form-control" name="title">
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
              <!-- 작성자 입력  -->
                <label class="text-black" for="lname">작성자</label>
                <input type="text" class="form-control"name ="writer">
              </div>
            </div>
          </div>
     		<div class="col-md-12">
		       	<div class="form-group">
		       		<!-- 파일 첨부  -->
		       		<input type="file" style="float:right; margin-bottom: 20px;" name="filename">
		  	    </div>
	  	    </div>
       
          <div class="form-group">
            <!--글 내용 입력  -->
            <label class="text-black" for="contents">내용</label>
            <textarea name="contents" class="form-control" id="contents" cols="30" rows="10"></textarea>
          </div>
        
      	<div class ="btn">
          <button type="submit" class="btn btn-primary"><a href="goQnABoard" style="color: white">작성하기</a></button>
          <button type="submit" class="btn btn-primary"><a href="goQnABoard" style="color: white">뒤로가기</a></button>
        </div>
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