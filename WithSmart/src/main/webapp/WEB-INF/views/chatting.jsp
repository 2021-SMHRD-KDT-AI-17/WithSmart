<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Group Chat</title>
</head>
<body>
    <h1>Group Chat</h1>
    <div id="chat-messages">
        <ul>
            <c:forEach items="${messages}" var="message">
                <li>${message.sender_id}: ${message.message}</li>
            </c:forEach>
        </ul>
    </div>
    <form action="/send-message" method="post">
        <input type="text" name="message">
        <button type="submit">Send</button>
    </form>
</body>
</html>