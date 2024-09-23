<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 결과</title>
<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
<%
List<Map<String, Object>> list = new ArrayList<>();
Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
list.add(map);
%>
	<div class="container">
		<h1 class="text-center">검색 결과</h1>
		<table class="table text-center">
		<thead>
			<tr>
				<td>메뉴</td>
				<td>상호</td>
				<td>별점</td>
			</tr>
		</thead>
		<tbody>
 <%
        // 검색어(keyword) 가져오기: 사용자가 입력한 검색어를 받아옵니다.
        String keyword = request.getParameter("keyword");
            
        // 별점 필터(starPointFilter) 가져오기: 별점 필터가 체크되어 있으면 필터링합니다.
        String filter = request.getParameter("starPointFilter");
        
        // 필터링할지 여부를 판단하는 변수 exclude를 설정합니다. 
        // starPointFilter가 체크된 경우에만 exclude가 true로 설정됩니다.
        boolean exclude = filter != null; // true:제외(체크됨) 
        
        // List에 저장된 Map을 순회하면서, 각 Map에 대해 조건을 적용하고 출력합니다.
        for(Map<String , Object> item : list) { // 향상된 for문 시작
            // 키워드와 메뉴가 일치하는지 확인
            if(keyword.equals(item.get("menu"))) { // if문 시작 
                // 필터링 조건: exclude가 true(별점 필터가 체크된 경우)이고, 별점이 4.0 이하이면 continue로 건너뜁니다.
                if (exclude && (double)item.get("point") <= 4.0) {
                    continue; // 조건을 만족하면 해당 항목을 출력하지 않음
                }
    %>
		<tr>
			<!-- 메뉴, 이름, 별점 출력 -->
			<td><%=item.get("menu")%></td>	
			<td><%=item.get("name")%></td>	
			<td><%=item.get("point")%></td>	
		</tr>
		
		<%	} // if문 끝 
			} // for문 끝
		%>
			</tbody>
		</table>
	</div>
</body>
</html>