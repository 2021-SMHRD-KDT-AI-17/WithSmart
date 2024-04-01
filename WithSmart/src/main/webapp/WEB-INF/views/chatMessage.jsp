<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Group Chat Messages</title>
</head>
<body>
    <h1>Group Chat Messages</h1>
    <!-- Display all group chat messages -->
    <ul>
        <c:forEach items="${message}" var="message">
            <li>${message.sender_id}: ${message.message}</li>
        </c:forEach>
    </ul>
    
    <!-- Form to send a new message -->
    <h2>Send Message</h2>
    <form action="/sendMessage" method="post">
        <input type="hidden" name="gpid" value="${param.gpid}">
        <input type="hidden" name="senderid" value="user123"> <!-- Assuming sender ID is hardcoded here -->
        <label for="message">Message:</label>
        <input type="text" id="message" name="message">
        <input type="submit" value="Send Message">
    </form>
</body>
</html>