<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	
	.container-md{
		
		justify-content: center;
		align-items: center;
		margin-top: 150px;
		margin-left: 300px;
		margin-right : 500px;
		width: 100%;
		
	}
	@media (max-width: 992px) {
        .container-md {
            margin-left: 50px;
            margin-right: 50px;
            width: auto;
        }
    }

    @media (max-width: 1900px) {
        .container-md {
            margin-left: 20px;
            margin-right: 20px;
        }

        .table-responsive {
            width: 100%;
        }
    }
	
/* 	
	.table-responsive{
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
	a{
		color: black;
	}
	
	.paging{
		margin-top : 20px;
		margin-bottom: 30px;
		
	}
	
	.table>thead{
		text-align: center;
	}
	
	.listTitle{
		 background: linear-gradient(to bottom, #A9E2F3, #ffffff); /* 그라데이션 배경 */
    	 box-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2); /* 그림자 효과 */
	}
	
	.start_table{
      background-image: url('resources/images/트로피5.jpg');
      width: 100%;
      height:170px;
      display: flex;
      justify-content: center;
      align-items: center; 
      
      position: relative;
      isolation : isolate;
   }
   
   
   .start_table::after{
      content : '';
      position: absolute;
      background: white;
      z-index: -1;
      inset:0;
      opacity: 0.5;
   
   }
   
   .start_table h1{
      color: black;
      font-weight: bold;
      font-family: "Arial Black", sans-serif;
      text-shadow: 4px 4px 4px rgba(128, 128, 128, 0.5);
       font-size: 50px;
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


        <div class="container-md">
       
			<div class="table-responsive">
			
			<div class="start_table">
				<span ><h1>공모전 게시판</h1></span>			
			</div>				
	                <div class ="btn">

						<a href="goMain"><button class="btn btn-primary" id="writer" style="background: #2E9AFE; border:none">홈으로 가기</button></a>

	           
	                </div>
					
  					<table class="table">
					  <thead>
					    <tr class="listTitle">
					      <th scope="col">No</th>
					      <th scope="col">공모전명</th>
					      <th scope="col">작성일</th>
					      <th scope="col">조회수</th>
					    </tr>
					  </thead>
					  <tbody>
					    <c:forEach items="${cpList}" var="cp" varStatus="s">
    						<tr>
						        <td style="text-align:center"> ${cp.competboard}</td>
						        <td ><a href="goCompetBoardDetail?competboard=${cp.competboard}">${cp.compettitle}</a></td>
						        <td style="text-align:center">${fn:split(cp.uploadtime," ")[0]}</td>
						        <td style="text-align:center">${cp.viewcount}</td>
						    </tr>
						</c:forEach>
					  </tbody>
  					</table>
				</div>
			</div>
			
			
			<div class="paging">
				<!-- 부트스트랩 페이징 적용   -->
				<nav aria-label="Page navigation example" class="bottom_num">
				  <ul class="pagination justify-content-center">
				    <div class="pagination">
				    <li class="page-item">
						    <c:if test="${currentPage > 1}">
						        <a class="page-link" href="goCompetBoard?page=${currentPage - 1}">&laquo; 이전</a>
						    </c:if>
					</li>
					
						    <c:forEach begin="1" end="${totalPages}" var="pageNum">
								 <li class="page-item ${pageNum == currentPage ? 'active' : ''}">
						        <c:choose>
						            <c:when test="${pageNum == currentPage}">
						                <span class="page-link">${pageNum} </span>
						            </c:when>
						            <c:otherwise>
						                <a class="page-link" href="goCompetBoard?page=${pageNum}">${pageNum}</a>
						            </c:otherwise>
						        </c:choose>
						        </li>
						    </c:forEach>
					
					
					<li class="page-item">	
						    <c:if test="${currentPage < totalPages}">
						        <a class="page-link" href="goCompetBoard?page=${currentPage + 1}">다음 &raquo;</a>
						    </c:if>
					</li>	    
						
						</div>
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