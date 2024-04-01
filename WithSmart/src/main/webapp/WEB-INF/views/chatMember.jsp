<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <title>Group Members</title>
</head>
<body>
    <h1>Group Members</h1>
    <!-- Display all group members -->
    <ul>
    <c:forEach items="${member}" var="memberItem">
        <li>${memberItem.mb_id}</li>
    </c:forEach>
</ul>
    
    <!-- Form to add a new member -->
    <h2>Add New Member</h2>
    <form action="addMember" method="post">
        <input type="hidden" name="gp_id" value="${param.gp_id}">
        <label for="mb_id">Member ID:</label>
        <input type="text" id="mb_id" name="mb_id">
        <input type="submit" value="Add Member">
    </form>
</body>
</html>