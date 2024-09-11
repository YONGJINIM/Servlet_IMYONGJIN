<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
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
	1부터 50까지의 합은 <%= totalSum(50) %> 입니다.
	
	<br>

	<%
	int[] scores = {81, 90, 100, 95, 80};

	int sum = 0; 
	double avg = 0;
	for (int i=0 ; i < scores.length; i++) {
		sum += scores[i];
	}
	avg = (double)sum/scores.length;
	%>
	
	평균 점수는 <%= avg %> 입니다.
	<br>

	<%
	int Sum =0;
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		for(String Scores : scoreList){
			if(Scores == "O") {
				Sum +=10;
			} 
		}
	%>
	채점 결과는 <%= Sum %> 점 입니다.
	<br>
	
	<%
	String birthDay = "20010820";
	String birth = birthDay.substring(0,4);
	int year = Integer.parseInt(birth); 
	int age = 2024 - year;
	%>
	20010820의 나이는 <%= age %> 입니다.
</body>
</html>