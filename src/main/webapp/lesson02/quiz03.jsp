<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>체격조건</title>
</head>
<body>
	<div class="cantainer">
		<h1>체격 조건</h1>
		<form method="get" action="/lesson02/quiz03_1.jsp">
			<div class="d-flex">
				<input type ="text" class="form-control col-2" name ="weight" placeholder="몸무게를 입력하세요">
				<span>kg</span>
				<input type="text" class="form-control col-2 ml-3" name="height" placeholder="키를 입력하세요">
				<span>cm</span>
				<input type="submit" class="btn btn-primary ml-3" value="계산">
			</div>
		</form>
	</div>
</body>
</html>