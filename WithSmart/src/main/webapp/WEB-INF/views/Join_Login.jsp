<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="kr.smhrd.entity.Member" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
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

<html>
<head>
<meta charset="UTF-8">
<title>WithSmart</title>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<!-- <script>
    // 메뉴 클릭 시 로그인 확인 함수
    function logCheck() {
        
    }
</script> -->

<style>
	.kkologout{
	
		background-color: #F7E600;
		border-color:#F7E600;
		border-radius:7px;
		border:none;
		width:200px;
		height:49.17px;
		
	}


</style>


</head>
<body>
	<script>
		Kakao.init('84d9c6f5e18014eec71252d1b8479107'); //발급받은 키 중 javascript키를 사용해준다.
		console.log(Kakao.isInitialized()); // sdk초기화여부판단
		//카카오로그인
		function kakaoLogin() {
		    Kakao.Auth.login({
		      success: function (response) {
		        Kakao.API.request({
		          url: '/v2/user/me',
		          success: function (response) {
		        	  alert("로그인 성공!")
		        	  console.log(response)
		          },
		          fail: function (error) {
		        	 	alert("로그인 실패!")
		            console.log(error)
		          },
		        })
		      },
		      fail: function (error) {
		        console.log(error)
		      },
		    })
		  }
		//카카오로그아웃  
		function kakaoLogout() {
		    if (Kakao.Auth.getAccessToken()) {
		      Kakao.API.request({
		        url: '/v1/user/unlink',
		        success: function (response) {
		        	console.log(response)
		        },
		        fail: function (error) {
		          console.log(error)
		        },
		      })
		      Kakao.Auth.setAccessToken(undefined)
		    }
		  }
	</script>

   <!-- header 파일 불러오기  --> 
 <%@ include file = "./header.jsp" %>
 <%
	//현재 날짜를 가져옵니다.
	 Date now = new Date();
	 // 현재 날짜를 yyyy-MM-dd 형식으로 포맷합니다.
	 String todayDate = new SimpleDateFormat("yyyy-MM-dd").format(now);
 %>
 
    
    <div class="hero-slant overlay" data-stellar-background-ratio="0.5" style="background-image: url('resources/images/join_login.jpg'); background-position: 0% 0px";>

          
      <div class="container">
        <div class="row align-items-center justify-content-between">
          <div class="col-lg-7 intro">
            <h1 class="text-white font-weight-bold mb-4" data-aos="fade-up" data-aos-delay="0">WithSmart</h1>
            <h3 class="text-white mb-4" data-aos="fade-up" data-aos-delay="100"><strong>회원가입</strong></h3>
            
            <!-- 회원가입 정보 입력 form -->
            <form action="memberInsert" class="sign-up-form d-grid" data-aos="fade-up" data-aos-delay="200" method ="post" style=width:425px>
	            <input type="text" class="form-control" placeholder="이메일을 입력해주세요" name="mb_id"  id="inputE" style="margin-bottom:10px">
	            <input type="button" class="btn btn-success" value="Email 중복체크" onclick="checkE()" style="margin-bottom:10px">
	            <span id="resultCheck"></span>
	            <input type="password" class="form-control" style="margin-bottom:20px" placeholder="비밀번호를 입력해주세요" name="mb_pw" id="inputPW">
	            <input type="password" class="form-control" style="margin-bottom:20px" placeholder="비밀번호를 다시 한번 입력해주세요" name="mb_repw" id="inputRePW">
	            <div id="resultCheckPw" style="color:red;"></div>
	            <input type="text" class ="form-control" style = "margin-top:10px" placeholder ="닉네임을 입력해주세요" name="mb_nick">
	            <input type="text" class ="form-control" style = "margin-top:10px" placeholder ="발급 받은 인증번호를 입력해주세요" name="mb_cert" id="inputC">
	            <input type="button" class="btn btn-success" value="인증번호 확인"  onclick="checkC()" style = "margin-top:5px">
	            <div id="certCheck"></div>
	            <input type="submit" class="btn btn-primary" style="margin-top:10px; background: #2E9AFE; border:none" value="회원가입 하기" width="500">
            </form>
          
          <br><br>
          
          <!-- 로그인  -->
      		<h3 class="text-white mb-4" data-aos="fade-up" data-aos-delay="100"><strong>로그인</strong></h3>
				<form action="goLogin" class="sign-up-form d-grid" data-aos="fade-up" data-aos-delay="200" method ="post" style=width:425px id="Loginform">
				
					<input type="text" class="form-control" placeholder="이메일을 입력하세요" name="mb_id" id="inputId">
					<input type="password" class="form-control"  placeholder="비밀번호를 입력하세요" name="mb_pw" id="inputPw">
					<input type="submit" class="btn btn-primary" style="margin-top:20px; background: #2E9AFE; border:none" value="로그인" onclick="logCheck()">
					<c:set var="todayDate" value="<%= todayDate %>" />
					<input type="hidden" value="${todayDate}" name="todayDate">
					<div id="resultlogCheck" style="color:red"></div>
					<br>
				
					
					<span onclick="kakaoLogin();">
				      <a href="javascript:void(0)">
				          <img src="https://k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg" width="200"
											alt="카카오 로그인 버튼" />
				      </a>
					</span>
					<span onclick="kakaoLogout();">
				      <a href="javascript:void(0)">
				      	<button class="kkologout" style ="width:200px; height:49.17px;"><a href="goMain" style="color: black; font-weight: bold; ">카카오 로그아웃</a></button>
<!-- 				      	<button class="btn btn-warning" style ="width:200px; height:49.17px;"><a href="goMain" style="color: black; font-weight: bold; ">카카오 로그아웃</a></button> -->
				      </a>
					 </span>
					 
					 </form>	
					<br>
					<!-- <span onclick="kakaoLogout();">
				      <a href="javascript:void(0)">
				      	<input type="submit" class="btn btn-warning"value="카카오 로그아웃">
				          <button>카카오 로그아웃</button>
				      </a>
					</span> -->
					
				
    
    
          </div>   
        </div>        
      </div>

	       <div class="slant" style="background-image: url('resources/images/slant.svg'); margin-top : 200px"></div>
        </div>
    <script>
    
    	document.getElementById("Loginform").addEventListener("submit",function(event){
    		event.preventDefault();
    		logCheck();
    	})
    </script>
    <script type="text/javascript">
       
       function logCheck(){
    	   
			var inputId = $('#inputId').val();
    	    var inputPw = $('#inputPw').val();
    	    <%-- var getpoint = '<%= session.getAttribute("getpoint") %>'; --%>
    	    /* var getpoint = ${getpoint}  */
    	   
    	    
    	    $.ajax({
    	        url: 'LoginCheck',
    	        data: {'inputId': inputId, 'inputPw': inputPw},
    	        type: 'post',
    	        success: function(data){
    	            if(data == 1){
    	                $('#resultlogCheck').text("등록되지 않은 아이디입니다.");
    	            } else if(data == 2){
    	                $('#Loginform').submit();
    	            } else if(data == 3){
    	                $('#resultlogCheck').text("비밀번호가 틀렸습니다.");
    	            }
    	        },
    	        error: function(){
    	            alert("통신실패!");
    	        }
    	    });
    	    
/*             if (getpoint == ("1")) {
            		alert("출석포인트 획득!");
            }else if(getpoint == ("0")){
            	alert("출석포인트를 이미 획득하셨습니다.");
            }else{
            	alert(JSON.stringify(getpoint));
            }  */
            
    	}
       
       

    
    
    
    function checkC(){
		var inputC = $('#inputC').val()
		
		$.ajax( 
			{
				url : 'certCheck',
				data : {'inputC' : inputC},
				type : 'get',
				success : function(data){
					if(data==1){
						$('#certCheck').text('인증번호가 확인되었습니다.')
					}else{
						$('#certCheck').text('등록되지 않은 인증번호입니다.')
					}
				},
				error : function(){
					alert("통신실패")
				}
			}
		)
	}
    
    function checkE(){
		var inputE = $('#inputE').val()
		console.log(inputE)
		
		$.ajax( 
			{
				url : 'emailCheck',
				data : {'inputE' : inputE},
				type : 'get',
				success : function(data){
					if(data==1){
						$('#resultCheck').text('사용 가능한 이메일')
					}else{
						$('#resultCheck').text('중복된 이메일')
					}
				},
				error : function(){
					alert("통신실패")
				}
			}
		)
	}
    
    function checkPwMatch(){
    	var pw = document.getElementById("inputPW").value;
    	var Repw= document.getElementById("inputRePW").value;
    	
    	if(pw==Repw){
    		document.getElementById("resultCheckPw").innerHTML = "";
    	}else{
    		document.getElementById("resultCheckPw").innerHTML = "비밀번호가 일치하지 않습니다";
    	}
    }
    document.getElementById("inputPW").addEventListener("input",checkPwMatch);
    document.getElementById("inputRePW").addEventListener("input",checkPwMatch);
    
    </script>
    
 	<!-- footer 파일 불러오기 -->
    <%@ include file="./footer.jsp" %>
    
    
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