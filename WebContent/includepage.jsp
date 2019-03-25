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
        String id = (String)session.getAttribute("id");
    %>
    
    <p><%=id%>님이 좋아하는 계절은 <%=season%>입니다. </p>
</body>
</html>