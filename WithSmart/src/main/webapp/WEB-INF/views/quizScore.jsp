<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>퀴즈 결과</title>
</head>
<body>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>퀴즈 결과</title>
</head>
<body>
    <h1>퀴즈 결과</h1>
    <p>당신의 점수는 <%= request.getAttribute("totalScore") %> / <%= request.getAttribute("maxScore") %> 점입니다.</p>
    
    <%-- 사용자의 점수에 따라 메시지 표시 --%>
    <% if ((int)request.getAttribute("totalScore") == (int)request.getAttribute("maxScore")) { %>
        <p>모든 문제를 정확히 맞추셨습니다! 축하합니다!</p>
    <% } else if ((int)request.getAttribute("totalScore") > (int)request.getAttribute("maxScore") / 2) { %>
        <p>잘 하셨습니다. 더 많은 연습을 통해 더 많은 점수를 획득하세요!</p>
    <% } else { %>
        <p>분발하세요. 좀 더 공부해서 더 높은 점수를 획득하세요.</p>
    <% } %>
    
    <a href="/showQuiz">다시 퀴즈 풀기</a>
</body>
</html>