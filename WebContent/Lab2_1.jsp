<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="./Lab2_1_styles.css">
<title>Insert title here</title>
</head>
<body>
    <%@ include file="./header.jsp"%>
<div class="container">
    <form action="./Lab2_1_result.jsp" method="POST">

        <div class="row">
            <span>이름 : </span>
            <input type="text" name="name">
        </div>
        <div class="row">
            <span>학번 : </span>
            <input type="text" name="studentId">
        </div>
        <div class="row">
            <span>while 문</span>
            <input type="radio" name="loop" value="while" />
            <span>for문</span>
            <input type="radio" name="loop" value="for" />
        </div>
        <div class="row">
            <span>입력횟수</span>
            <input type="text" name="count">
        </div>
        <div class="row">
            <span>입력 글자</span>
            <input type="text" name="text">
        </div>
        <button>보내기</button>
    </form>
</div>
</body>
</html>