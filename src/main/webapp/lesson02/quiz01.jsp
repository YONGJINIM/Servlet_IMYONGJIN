<%@page import="java.util.Iterator"%>
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
		// 1번 문제 
		// 필드
		
		// 메소드 
		// input: N(끝 수, 정수)
		// output: 합계(정수)
		public int getSum(int end) {
			int sum = 0;
			for(int i = 1 ; i <= end ; i++) {
				 sum += i;
			}
			return sum;
		}
	%>
	
	<%
	// 2번 문제 
	int[] scores = {81, 90, 100, 95, 80};

	int sum = 0; 
	for (int i=0 ; i < scores.length; i++) {
		sum += scores[i];
	}
	double average = (double)sum/(double)scores.length;
	%>

	<%
	// 3번 문제 
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		Iterator<String> iter = scoreList.iterator();
		int score = 0;
		while(iter.hasNext()){
			String answer = iter.next();
			if(answer.equals("O")){
				score +=  100/ scoreList.size();
			}
		}
	%>
	
	<%
	// 4번 문제
	String birthDay = "20010820";
	String yearStr = birthDay.substring(0,4);
	int age = 2024 - Integer.valueOf(yearStr); 
	%>
	
	<!-- 정답 출력 -->
	<h2>1부터 50까지의 합은 <%= getSum(50) %> 입니다.</h2>
	<h2>평균 점수는 <%= average %> 입니다.</h2>
	<h2>채점 결과는 <%= score %> 점 입니다.</h2>
	<h2>20010820의 나이는 <%= age %> 입니다.</h2>
	
</body>
</html>