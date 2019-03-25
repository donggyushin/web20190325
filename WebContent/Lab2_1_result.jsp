<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="./Lab2_1_result_styles.css">
<title>Insert title here</title>
</head>
<%!
	String name;
	String studentId;
	String loop;
	String text;
	int count;
%>
<%
	name = request.getParameter("name");
	studentId = request.getParameter("studentId");
	loop = request.getParameter("loop");
	text = request.getParameter("text");
	count = Integer.parseInt(request.getParameter("count"));
%>

<body>
		<% 
		if(loop == null){
			%>
			<span>라디오 버튼을 선택하지 않았습니다. </span>
			<%
		}else {
			%>
			<div class="container">
					<div class="row">
						<span>이름</span> <span>:</span> <span><%=name%></span>
					</div>
					<div class="row">
						<span>학번</span> <span>:</span> <span><%=studentId%></span>
					</div>
					<span> <%=loop%>문 선택! </span>
						<%
							for(int i = 0 ; i < count ; i ++) {
								%>
								<span><%=text%></span>
								<%
							}
						%>
				</div>		
			<%
		}
	%>
	
</body>
</html>