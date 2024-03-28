<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>퀴즈 결과</title>
</head>
<body>
    <h1>퀴즈 결과</h1>
    
    <%-- 사용자의 점수 표시 --%>
    <p>당신의 점수는 ${score} / ${maxScore} 점입니다.</p>
    
    <%-- 사용자의 점수에 따른 메시지 표시 --%>
    <c:choose>
        <%-- 만점일 경우 --%>
        <c:when test="${score == maxScore}">
            <p>모든 문제를 정확히 맞추셨습니다! 축하합니다!</p>
        </c:when>
        <%-- 절반 이상을 맞춘 경우 --%>
        <c:when test="${score > maxScore / 2}">
            <p>잘 하셨습니다. 더 많은 연습을 통해 더 높은 점수를 획득하세요!</p>
        </c:when>
        <%-- 절반 미만을 맞춘 경우 --%>
        <c:otherwise>
            <p>분발하세요. 좀 더 공부해서 더 높은 점수를 획득하세요.</p>
        </c:otherwise>
    </c:choose>

    <%-- 초기화면으로 돌아가는 버튼 --%>
    <form id="quiz-score-form" action="backToMain" method="post">
        <div class="text-center">
            <button type="submit" class="btn btn-primary">초기화면으로 돌아가기</button>
        </div>
    </form>
</body>
</html>