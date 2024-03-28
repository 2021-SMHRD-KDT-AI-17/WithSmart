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
    <form id="quiz-score-form" action="/" method="post">
        <p>당신의 점수는 ${totalScore} / ${maxScore} 점입니다.</p>
        
        <%-- 사용자의 점수에 따라 메시지 표시 --%>
        <c:choose>
            <c:when test="${totalScore == maxScore}">
                <p>모든 문제를 정확히 맞추셨습니다! 축하합니다!</p>
            </c:when>
            <c:when test="${totalScore > maxScore / 2}">
                <p>잘 하셨습니다. 더 많은 연습을 통해 더 많은 점수를 획득하세요!</p>
            </c:when>
            <c:otherwise>
                <p>분발하세요. 좀 더 공부해서 더 높은 점수를 획득하세요.</p>
            </c:otherwise>
        </c:choose>
        <%-- 메인 페이지로 이동하는 링크 추가 --%>
        <a href="/quizMain">메인 페이지로 돌아가기</a>
    </form>
</body>
</html>