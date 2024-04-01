<!DOCTYPE html>
<html>
<head>
    <title>Chatting Page</title>
</head>
<body>
    <h1>Chatting Page</h1>
    <!-- Display all group chats -->
    <h2>All Group Chats</h2>
    <ul>
        <c:forEach items="${chat}" var="chat">
            <li>${chat.gp_name}</li>
        </c:forEach>
    </ul>
    
    <!-- Form to create a new chat -->
    <h2>Create New Chat</h2>
    <form action="createChat" method="post">
        <label for="gpname">Group Name:</label>
        <input type="text" id="gpname" name="gpname">
        <input type="submit" value="Create Chat">
    </form>
</body>
</html>