<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <title>채팅 페이지</title>
</head>
<body>
    <h1>채팅 페이지</h1>
    <!-- Display all group chats -->
    <h2>모든 채팅</h2>
    <ul>
        <c:forEach items="${chat}" var="chatItem">
    <li>${chatItem.gp_name}</li>
</c:forEach>
    </ul>
    
    <!-- Form to create a new chat -->
    <h2>채팅 시작하기</h2>
    <form action="createChat" method="post">
    	<input type="hidden" name="gp_id" value="${gp_id}">
        <label for="gp_name">그룹 명:</label>
        <input type="text" id="gp_name" name="gp_name">
        <input type="submit" value="채팅 시작">
    </form>
</body>
</html>