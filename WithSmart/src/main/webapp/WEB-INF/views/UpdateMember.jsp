<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>WithSmart</title>


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
    
  
    <style>

        @media (max-width: 576px) {
            .board {
                margin: 50px auto;
                max-width: 90%;
            }
        }
        
        @media (max-width: 576px) {
            .btn {
                width: 100%;
            }
        }
        
        
         @media (min-width: 576px) {
            .board {
                margin-top: 200px;
                margin-left: auto;
                margin-right: auto;
                width: 80%;
                max-width: 800px;
            }
        }
        
       
    </style>
</head>
<body>

    <!-- Header -->
    <%@ include file="./header.jsp" %>   

    <div class="board">
        <div class="table-responsive">
            <h2>회원정보수정</h2>
            <hr>
            <form action="memberUpdate" method="post">
                <div class="form-group">
                    <label for="mb_id">이메일 정보</label>
                    <input type="text" class="form-control" id="mb_id" name="mb_id" value="${loginMember.mb_id}" readonly>
                </div>
                <div class="form-group">
                    <label for="mb_nick">닉네임 변경</label>
                    <input type="text" class="form-control" id="mb_nick" name="mb_nick" placeholder="변경할 닉네임" value="${loginMember.mb_nick}">
                </div>
                <div class="form-group">
                    <label for="current_password">현재 비밀번호</label>
                    <input type="text" class="form-control" id="current_password" placeholder="현재 비밀번호" value="${loginMember.mb_pw}" readonly>
                </div>
                <div class="form-group">
                    <label for="new_password">새 비밀번호</label>
                    <input type="text" class="form-control" name="mb_pw" placeholder="새 비밀번호 입력" id="inputPW">
                    <input type="text" class="form-control" name="mb_repw" placeholder="새 비밀번호를 다시한번 입력" id="inputRePW">
                    <div id="resultCheckPw" style="color:red;"></div>
                </div>
                <div class="form-group">
                 
                    <button type="submit" class="btn btn-primary btn-lg"  style="background: #2E9AFE; border:none">수정하기</button>
                    <a href="goMain" class="btn btn-primary btn-lg"  style="background: #2E9AFE; border:none">홈으로 가기</a>
                </div>
            </form>
        </div>
    </div>
    
    
     <div id="overlayer"></div>
    	<div class="loader">
      	<div class="spinner-border" role="status">
       		<span class="sr-only">Loading...</span>
      	</div>
    </div> 

   
	<!-- script  -->
	<script type="text/javascript">
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
    