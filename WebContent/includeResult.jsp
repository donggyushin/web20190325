<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
    <%
        String season = request.getParameter("season");
        pageContext.include("./includepage.jsp?season="+season);
    %>
    <!-- 페이지를 리다이렉트 해주기 때문에 request 객체가 소멸되어졌다가 다시 생긴다. 
    	그래서 season 을 변수에다가 추가해줘야 includeResult 페이지에서 변수에 접근이 가능해짐. 
     -->
</body>
</html>