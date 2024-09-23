<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채널 안내</title>
<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<style>
header {height:80px;}
nav {height:50px;}
.contents {min-height:500px;}
footer {height:50px;}
</style>
</head>
<body>
<%
List<Map<String, String>> list = new ArrayList<>();
Map<String, String> map = new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); } };
list.add(map);
map = new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); } };
list.add(map);
map = new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); } };
list.add(map);
map = new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); } };
list.add(map);

map = new HashMap<String, String>() {{ put("ch", "54"); put("name", "OCN"); put("category", "영화"); } };
list.add(map);
map = new HashMap<String, String>() {{ put("ch", "56"); put("name", "Screen"); put("category", "영화"); } };
list.add(map);
map = new HashMap<String, String>() {{ put("ch", "57"); put("name", "Mplex"); put("category", "영화"); } };
list.add(map);

map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); } };
list.add(map);
map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); } };
list.add(map);
map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); } };
list.add(map);

map = new HashMap<String, String>() {{ put("ch", "3"); put("name", "tvN"); put("category", "예능"); } };
list.add(map);
map = new HashMap<String, String>() {{ put("ch", "28"); put("name", "MBC Every1"); put("category", "예능"); } };
list.add(map);
map = new HashMap<String, String>() {{ put("ch", "48"); put("name", "JTBC2"); put("category", "예능"); } };
list.add(map);
map = new HashMap<String, String>() {{ put("ch", "49"); put("name", "E채널"); put("category", "예능"); } };
list.add(map);

map = new HashMap<String, String>() {{ put("ch", "120"); put("name", "SPOTV"); put("category", "스포츠"); } };
list.add(map);
map = new HashMap<String, String>() {{ put("ch", "121"); put("name", "KBSN 스포츠"); put("category", "스포츠"); } };
list.add(map);
%>
	<div id="wrap" class="container"> <!-- 콘텐츠를 감싸는 컨테이너 -->
    <header class="d-flex justify-content-center align-items-center">
        <h2 class="text-danger">SK Broadband IPTV</h2> <!-- 헤더 영역, 타이틀 -->
    </header>

    <nav class="bg-danger d-flex align-items-center"> <!-- 내비게이션 영역 -->
        <ul class="nav nav-fill w-100">
            <!-- 카테고리별 채널 목록을 보여주는 내비게이션 링크 -->
            <li class="nav-item"><a href="/lesson02/quiz08.jsp" class="nav-link text-white">전체</a></li>
            <li class="nav-item"><a href="/lesson02/quiz08.jsp?category=지상파" class="nav-link text-white">지상파</a></li>
            <li class="nav-item"><a href="/lesson02/quiz08.jsp?category=드라마" class="nav-link text-white">드라마</a></li>
            <li class="nav-item"><a href="/lesson02/quiz08.jsp?category=예능" class="nav-link text-white">예능</a></li>
            <li class="nav-item"><a href="/lesson02/quiz08.jsp?category=영화" class="nav-link text-white">영화</a></li>
            <li class="nav-item"><a href="/lesson02/quiz08.jsp?category=스포츠" class="nav-link text-white">스포츠</a></li>
        </ul>
    </nav>

    <section class="contents"> <!-- 콘텐츠 영역, 채널 정보를 보여줌 -->
        <table class="table text-center"> <!-- 부트스트랩 테이블 스타일 적용 -->
            <thead>
                <tr>
                    <th>채널</th>
                    <th>채널명</th>
                    <th>카테고리</th>
                </tr>
            </thead>
            <tbody>
            <%
                String category = request.getParameter("category"); 
                // URL에서 category 파라미터를 가져옴. 없으면 null
                
                // 채널 리스트를 반복하며 카테고리 조건에 맞는 채널만 출력
                for (Map<String, String> item : list) {
                    // 전체(category가 null)이거나, 선택된 카테고리와 일치하는 채널만 표시
                    if (category == null || category.equals(item.get("category"))) {
            %>
                <tr>
                    <td><%= item.get("ch") %></td> <!-- 채널 번호 -->
                    <td><%= item.get("name") %></td> <!-- 채널 이름 -->
                    <td><%= item.get("category") %></td> <!-- 채널 카테고리 -->
                </tr>
            <%
                    }
                }
            %>
            </tbody>
        </table>
    </section>
	  <footer class="d-flex justify-content-center align-items-center"> <!-- 푸터 영역 -->
		    <small>Copyright © SK Broadband IPTV 2024</small> <!-- 푸터 텍스트 -->
	 </footer>
		</div>
	</body>
</html>