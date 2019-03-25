<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
    .row {
        display: flex;
        align-items: center;
    }
</style>
</head>
<body>
    <%
    String id = request.getParameter("id");
    String password = request.getParameter("password");
    Date d = new Date();
    SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
    long time;
    %>
    <%
        if(id == null || password == null) {
            %>
            <script>
                alert('로그인 실패');
                history.go(-1);     // 이전 페이지
            </script>
            <%
        }
        session.setAttribute("id", id);
        time = session.getLastAccessedTime();
        d.setTime(time);
        
    %>
    <div class="container">
        <div class="row">
            <span><%=id%></span>
            <p>님 로그인 하셨습니다. </p>
            <form action="./logout.jsp" method="POST">
                <button>로그아웃</button>
            </form>
        </div>
        <div class="row">
            <p>* 좋아하는 계절은?</p>
        </div>
        <div class="row">
            <form action="./includeResult.jsp" method="POST">
                <input type="radio" checked name="season" value="봄" /><span>봄</span>
                <input type="radio" name="season" value="여름" /><span>여름</span>
                <input type="radio" name="season" value="가을" /><span>가을</span>
                <input type="radio" name="season" value="겨울" /><span>겨울</span>
                <button>결과보기</button>
            </form>
        </div>
        <div class="row">
            <p>
              마지막 접속 시간 : <%=f.format(d)%>
            </p>
        </div>
    </div>
</body>
</html>