<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="kr.smhrd.entity.Member"%>   
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
	
	.listTitle{
		 background: linear-gradient(to bottom, #A9E2F3, #ffffff); /* 그라데이션 배경 */
    	 box-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2); /* 그림자 효과 */
    	 font-weight: bold;
	}
	
	
</style>
</head>
<body>
	
	<%
		List<Member> list = (List<Member>)request.getAttribute("list");
		// int membersize = memberMapper.getMembersize();
	%>


<!-- header 파일 불러오기 -->
    <%@ include file="./header.jsp" %>   


        <div class="board">
       
			<div class="table-responsive">
										
	                <div class ="btn">
						<a href="goMain"><button class="btn btn-primary" id="writer" style="background: #2E9AFE; border:none">홈으로 가기</button></a>
	                </div>
					
  					<table class="table">
					  <thead>
					  	<h2>회원관리페이지</h2>
					  	<h3>총 ${membersize }명</h3>
					    <tr class="listTitle">
					      <td scope="col">No</td>
					      <td scope="col">이메일</td>
					      <td scope="col">닉네임</td>
					      <td scope="col">삭제<td>
					    </tr>
					  </thead>
					  <tbody>
					    <%-- <%for(Member m:list){ %>
					    	<tr>
					    		<td><%=m.getMb_id() %></td>
					    		<td><%=m.getMb_nick() %></td>
					    	</tr>
					    <%} %> --%>
					    <% int currentPage = (Integer)request.getAttribute("currentPage");%>
					    <c:forEach items="${list }" var="m" varStatus="status">
								<tr>
									<%if(currentPage==1){ %>
									<td>${status.count }</td>
									<%}else{ %>
									<td>${status.count+(currentPage-1)*10 }</td>
									<%} %>
									<td>${m.mb_id }</td>
									<td>${m.mb_nick }</td>
									<td><a href="deleteMember?mb_id=${m.mb_id }">삭제</a></td>						
								</tr>
							</c:forEach>
					  </tbody>
    
  					</table>
				</div>
			
			<!-- 부트스트랩 페이징 적용   -->
			<nav aria-label="Page navigation example" class="bottom_num">
				  <ul class="pagination justify-content-center">
				    <div class="pagination">
				    <li class="page-item">
						    <c:if test="${currentPage > 1}">
						        <a class="page-link" href="goShowMember?page=${currentPage - 1}">&laquo; 이전</a>
						    </c:if>
					</li>
					
						    <c:forEach begin="1" end="${totalPages}" var="pageNum">
								 <li class="page-item ${pageNum == currentPage ? 'active' : ''}">
						        <c:choose>
						            <c:when test="${pageNum == currentPage}">
						                <span class="page-link">${pageNum} </span>
						            </c:when>
						            <c:otherwise>
						                <a class="page-link" href="goShowMember?page=${pageNum}">${pageNum}</a>
						            </c:otherwise>
						        </c:choose>
						        </li>
						    </c:forEach>
					
					
					<li class="page-item">	
						    <c:if test="${currentPage < totalPages}">
						        <a class="page-link" href="goShowMember?page=${currentPage + 1}">다음 &raquo;</a>
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