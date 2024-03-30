<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="./header.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>퀴즈 랭킹</title>

    <!-- 부트스트랩 CSS -->
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
          crossorigin="anonymous">
    <link
            href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;700&display=swap"
            rel="stylesheet">
    <link rel="stylesheet" href="resources/css/style.css">

    <!-- 스타일 -->
    <style>
        body {
            background-color: #f8f9fa; /* 배경색 */
            color: #212529; /* 텍스트 색상 */
            font-family: 'Montserrat', sans-serif; /* 글꼴 */
        }

        .container {
            margin-top: 50px;
        }

        .trophy-icons {
            display: flex;
            flex-direction: row; /* 가로 방향으로 배치 */
            justify-content: space-around; /* 아이템들을 동일한 간격으로 배치 */
            margin-bottom: 20px;
        }

        .trophy-icon {
            display: flex;
            flex-direction: column; /* 세로 방향으로 배치 */
            align-items: center; /* 아이템 가운데 정렬 */
        }

        .trophy-icon img {
            margin-bottom: 10px; /* 이미지 아래 여백 */
            width: 120px; /* 아이콘 이미지 너비 조정 */
            height: 120px; /* 아이콘 이미지 높이 조정 */
            background-color: #f1f1f1; /* 이미지 배경색 설정 */
            border-radius: 50%; /* 이미지를 원형으로 만들기 */
            padding: 10px; /* 이미지 주변 여백 추가 */
        }

        .table {
            background-color: #fff; /* 테이블 배경색 */
        }

        .table th,
        .table td {
            text-align: center; /* 텍스트 가운데 정렬 */
            vertical-align: middle;
        }

        .table thead th {
            background-color: #007bff; /* 테이블 머리글 배경색 */
            color: #fff; /* 테이블 머리글 텍스트 색상 */
        }

        .table-striped tbody tr:nth-of-type(odd) {
            background-color: #f3f3f3; /* 줄무늬 행 배경색 */
        }
    
    </style>
</head>
<body>
<br>
<br>
<div class="container">
    <h1 class="mt-5" align="center">퀴즈 랭킹</h1>
    <br>
    <br>
    <br>
    
    <!-- 순위 아이콘 이미지 -->
    <div class="trophy-icons">
        <div class="trophy-icon">
            <img src="resources/images/월계수(은).jpg" alt="2등" width="100px" height="100px">
            <p>2</p>
        </div>
        <div class="trophy-icon">
            <img src="resources/images/월계수.jpg" alt="1등" width="100px" height="100px">
            <p>1</p>
        </div>
        <div class="trophy-icon">
            <img src="resources/images/월계수동.jpg" alt="3등" width="100px" height="100px">
            <p>3</p>
        </div>
    </div>
    
    
    <table class="table mt-3 table-striped">
        <thead>
        <tr>
            <th>순위</th>
            <th>사용자 닉네임</th>
            <th>푼 문제 수</th>
            <th>정답률 (%)</th>
        </tr>
        </thead>
        <tbody>
        <%-- ranking 데이터를 표시합니다. --%>
        <c:forEach var="result" items="${ranking}" varStatus="loop">
    <tr>
        <td>
            <%-- 순위에 따라 이미지 아이콘 삽입 --%>
            <c:choose>
                <c:when test="${loop.index == 0}">
                    <img src="월계수.jpg" alt="금" width="50px" height="50px">
                </c:when>
                <c:when test="${loop.index == 1}">
                    <img src="월계수(은).jpg" alt="은" width="50px" height="50px">
                </c:when>
                <c:when test="${loop.index == 2}">
                    <img src="월계수(동).png" alt="동" width="50px" height="50px">
                </c:when>
                <c:otherwise>
                    ${loop.index + 1}
                </c:otherwise>
            </c:choose>
        </td>
        <td>${result.mb_nick}</td> <%-- 사용자의 닉네임을 출력합니다. --%>
        <td>${result['푼_문제_수']} 문제</td>
        <td><fmt:formatNumber value="${result['정답률']}" pattern="###" />%</td> <%-- 소수점 이하를 버려서 정수로 변환하여 출력 --%>
    </tr>
</c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>