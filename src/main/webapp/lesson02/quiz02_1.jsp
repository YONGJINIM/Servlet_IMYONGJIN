<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz02</title>
</head>
<body>
	<%
	String type = request.getParameter("type");
	SimpleDateFormat sdf = null;
	
	if (type.equals("time")){
		sdf = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초 입니다.");
	} else { // 날짜
		sdf = new SimpleDateFormat("오늘 날짜는 yyyy년 M월 입니다.");
	}
	String result = sdf.format(new Date());
	%>
	
	<div class="container">
		<div class="display-4">
			<%= result %>
		</div>
	</div>

</body>
</html>