<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>

	<%!
		// 메소드 
		public int totalSum(int num) {
			int sum = 0;
			for(int i = 1 ; i <= num ; i++) {
				 sum += i;
			}
			return sum;
		}
	%>
	<%= totalSum(10) %>

	<%
	int[] scores = {81, 90, 100, 95, 80};

	int sum = 0; 
	double avg = 0;
	for (int i=0 ; i <= scores.length; i++) {
		sum += scores[i];
	}
	avg = sum/scores.length;
	%>
	<%= avg %>

</body>
</html>