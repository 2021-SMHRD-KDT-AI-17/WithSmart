<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <title>채팅 페이지</title>
</head>
<body>

<script async src="//client.uchat.io/uchat.js"></script>
<%
    long time = System.currentTimeMillis() / 1000; // 현재 시간 (초)
    String room = "vensr"; // 채팅방 이름
    String token = "ff1dfa881d09c6e515a3b48b51d0aad3"; // 토큰 (유출 주의)
    String nick = (String) request.getAttribute("mb_nick"); // 닉네임
    String id = (String) request.getAttribute("mb_id"); // 아이디
    int level = (int) request.getAttribute("mb_level"); // 레벨
    boolean isAdmin = (boolean) request.getAttribute("is_admin"); // 관리자 여부
    String auth = isAdmin ? "admin" : ""; // 권한
    String icons = ""; // 아이콘 파일 경로
    String uiconFile = "/data/member/" + id.substring(0, 2) + "/" + id + ".gif"; // 아이콘 파일 경로
    String g5Path = (String) request.getAttribute("G5_PATH"); // G5_PATH 값
    String g4Path = (String) request.getAttribute("g4.path"); // g4.path 값
    
    if (is_member) {
        String fullPath = (g5Path != null) ? g5Path : g4Path;
        fullPath += uiconFile;
        if (new File(fullPath).exists()) {
            icons = fullPath;
        }
    }
    
    // 데이터 변환 및 출력
    StringBuilder userData = new StringBuilder();
    userData.append("time=").append(time).append("&")
            .append("room=").append(room).append("&")
            .append("token=").append(token).append("&")
            .append("nick=").append(URLEncoder.encode(nick, "UTF-8")).append("&")
            .append("id=").append(URLEncoder.encode(id, "UTF-8")).append("&")
            .append("level=").append(level).append("&")
            .append("auth=").append(auth).append("&");
    if (!icons.isEmpty()) {
        userData.append("icons=").append(URLEncoder.encode(icons, "UTF-8")).append("&");
    }
    String userDataString = userData.toString();
    String hash = DigestUtils.md5Hex(userDataString); // 해시 생성
    userData.append("hash=").append(hash); // 해시 추가
%>
<u-chat room="<%= room %>" user_data="<%= userDataString %>" style="display:inline-block; width:500px; height:500px;"></u-chat>
</body>
</html>