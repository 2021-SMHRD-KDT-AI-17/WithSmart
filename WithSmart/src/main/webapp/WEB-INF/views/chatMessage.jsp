<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <title>메세지 보내기</title>
</head>
<body>
    <h1>메세지 보내기</h1>
    <form action="sendMessage" method="post">
        <input type="hidden" name="gp_id" value="${param.gp_id}">
        <input type="hidden" name="sender_id" value="${param.sender_id}">
        <label for="message">메세지:</label>
        <input type="text" id="message" name="message">
        <input type="submit" value="메세지 보내기">
    </form>
</body>
</html>