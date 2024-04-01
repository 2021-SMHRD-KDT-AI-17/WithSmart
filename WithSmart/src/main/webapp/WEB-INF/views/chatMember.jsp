<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Group Members</title>
</head>
<body>
    <h1>Group Members</h1>
    <!-- Display all group members -->
    <ul>
        <c:forEach items="${member}" var="member">
            <li>${member.mb_id}</li>
        </c:forEach>
    </ul>
    
    <!-- Form to add a new member -->
    <h2>Add New Member</h2>
    <form action="/addMember" method="post">
        <input type="hidden" name="gpid" value="${param.gpid}">
        <label for="mbid">Member ID:</label>
        <input type="text" id="mbid" name="mbid">
        <input type="submit" value="Add Member">
    </form>
</body>
</html>