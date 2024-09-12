<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과</title>
</head>
<body>
	<%
		// 값 가져오기 
		String nickname =request.getParameter("nickname");
		String hobby =request.getParameter("hobby");
		String animal =request.getParameter("animal");
		
		// 선택 항목이 여러개일 때(값을 여러개를 가져와야 할 때) getParameterValues() 중요 
		String[] foodArr =request.getParameterValues("food");

		String fruit =request.getParameter("fruit");
	%>
	
	<table border="1">
		<tr>
			<th>이름</th>
			<td><%=nickname %></td>
		</tr>
		
		<tr>
			<th>취미</th>
			<td><%=hobby %></td>
		</tr>
		<tr>
			<th>좋아하는 동물</th>
			<td><%=animal %></td>
		</tr>
		
		<tr>
			<th>좋아하는 음식</th>
			<td>
				<% 
						
				
				if(foodArr != null) {
					String result = "";
					for (int i =0; i < foodArr.length ; i++) {
						result += foodArr[i] + ",";
					}
					// 맨 뒤에 붙은 콤마 제거
					// 문자열 추출 substring(0, 2) 사용
					result = result.substring(0, result.length() - 1);
					out.print(result);
				}
				%>
			</td>
		</tr>
		
		<tr>
			<th>좋아하는 과일</th>
			<td><%=fruit %></td>
		</tr>
		
	</table>
	
</body>
</html>