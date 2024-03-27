<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="kr.smhrd.entity.Member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% Member loginMember = (Member)session.getAttribute("loginMember"); %>
    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close">
          <span class="icofont-close js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
    
    <div class="container">

	<!-- Statr nav 메인 화면 시작   -->
      <nav class="site-nav">
        <div class="logo">
        <!-- 로고 클릭시 Main.jsp로 이동  -->
          <a href="goMain" class="text-black">WithSmart<span class="text-black"></span></a>
        </div>
        <div class="row align-items-center">
          
          <!-- 홈, 게시판, 점심 고르기, 채팅 선택 바  -->
          <div class="col-12 col-sm-12 col-lg-12 site-navigation text-center">
            <ul class="js-clone-nav d-none d-lg-inline-block text-left site-menu">
          
            <!-- 로그인한 사용자 닉네임 표시 -->          
              <li class="text-black">
              <%if(loginMember == null){ %>
              	<strong> 님 </strong></li>
              <%}else{ %>
              	<strong><%=loginMember.getMb_nick() %>님 </strong></li>
              <%} %>
              
              <li class="active"><a href="goMain" class="text-black">홈</a></li>
              <li class="has-children">
                <a href="#"  class="text-black">자유게시판</a>
                <ul class="dropdown">
                  <li><a href="goStudyBoard"  class="text-black">스터디게시판</a></li>
                  <li><a href="goFriendBoard" class="text-black" >친목게시판</a></li>
                  <li><a href="goProjectBoard" class="text-black" >프로젝트게시판</a></li>
                  <li><a href="goQnABoard" class="text-black">질문게시판</a></li>
                </ul>
              </li>
           
               <li><a href="goSuggBoard" class="text-black">애로 및 건의사항 게시판</a></li>
               
               <li class="has-children">
             	<a href="#" class="text-black">채용공고 및 공모전 게시판</a>
                    <ul class="dropdown">
                      <li><a href="goJobBoard">채용공고</a></li>
                      <li><a href="goCompetBoard">공모전</a></li>
					</ul>
               </li>
               
               <li><a href ="goLunch" class="text-black">점심메뉴 고르기</a>
               <li><a href ="#" class="text-black">오늘의 퀴즈</a>
               <li><a href ="#" class="text-black">채팅</a>
               
               <!-- 로그인 성공시 보이는 메뉴  -->
               <%if(loginMember == null){ %>
               	   
               <%}else{ %>
	               <li class="has-children">
	                <a href="#" class="text-black">마이페이지</a>
	                <ul class="dropdown">
	                  <li><a href="showUpdate">개인정보수정</a></li>
	                  <%if(loginMember.getMb_id().equals("admin@naver.com")) {%>
	                  		<li><a href="goShowMember">회원정보관리</a></li>
	                  <%} %>
	                  <li><a href="memberLogout">로그아웃</a></li>
	                  <span onclick="kakaoLogout();">
				      <a href="javascript:void(0)">
				      	
				         <li><a href="goMain">카카오 로그아웃</a><li>
				      </a>
					 </span>
	                  
	                  </ul>
	              </li>
	              
	           <%} %>
	          
                             
            </ul>
            
            
            <!-- 로그인 상태일 경우 보이는 선택지 -->
        <%--     <%if(loginMember == null){ %>
				<a href="#menu">로그인</a>
			<%}else{ %>
				<a href="showUpdate">개인정보수정</a>
				<a href="memberLogout">로그아웃</a>
				<%if(loginMember.getEmail().equals("admin")) {%>
				<a href="goShowMember">회원정보관리</a>
				<%} %>
			<%} %> --%>
            

  
            <a href="#" class="burger light ml-auto site-menu-toggle js-menu-toggle d-block d-lg-none" data-toggle="collapse" data-target="#main-navbar">
              <span></span>
            </a>

          </div>

        </div>  
      </nav> <!-- END nav -->

    </div> <!-- END container -->
</body>
</html>