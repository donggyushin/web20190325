<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
        session.invalidate();	// 남아있는 모든 세션에 대한 정보를 지워줌. 
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
    <script>
        alert("로그아웃 되었습니다. ");
        window.location.href='./Lab2_2.jsp';
    </script>
    
</body>
</html>