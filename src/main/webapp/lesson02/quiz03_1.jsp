<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<%
	 int weight = Integer.parseInt(request.getParameter("weight"));
	 int height = Integer.parseInt(request.getParameter("height"));
	 double BMI = weight / ((height / 100.0) * (height / 100.0));
   	 String result = null;
	 
	 if (BMI <= 20) {
		 result = "저체중" ;
	 } else if (BMI <= 25) { // 21 ~ 25
		 result = "정상" ;
	 } else if (BMI <= 30) { // 26 ~ 30
		 result = "과체중" ;
	 } else {
		 result = "비만" ;
	 }
	%>
	
	<div class="container">
			<h1>BMI 측정 결과</h1>
			<div class=display-4>당신은 <span class="text-info"><%= result %></span>입니다.<div>
			<small>BMI 수치 : <%=BMI %></small>
		</div>
	</div>
</body>
</html>