<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	// 한글을 안깨지게 하기 위해서 인코딩을 UTF-8 로 바꿔줌
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
    <div class="container">
        <form action="./Lab2_2_result.jsp" method="POST">
            <div class="row">
                <span>아이디</span>
                <input type="text" name="id">
            </div>
            <div class="row">
                <span>비밀번호</span>
                <input type="text" name="password">
            </div>
            <button>로그인</button>
        </form>
    </div>
</body>
</html>