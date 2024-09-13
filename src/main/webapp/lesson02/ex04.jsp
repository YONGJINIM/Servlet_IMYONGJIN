<%@page import="java.util.Arrays"%>  <!-- Arrays 클래스를 import하여 리스트를 만들 때 사용 -->
<%@page import="java.util.List"%>    <!-- List 인터페이스를 import하여 리스트 타입을 정의 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> <!-- JSP 페이지의 설정: 언어는 자바, 문서의 컨텐츠 타입은 UTF-8로 지정 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> <!-- HTML 문서의 문자 인코딩을 UTF-8로 설정 -->
<title>장보기 목록</title> <!-- 웹 페이지의 제목 설정 -->

<!-- 부트스트랩 CSS 불러오기 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

<!-- JQuery 및 Bootstrap JS 불러오기 -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>

<body>
    <div class="container"> <!-- Bootstrap의 컨테이너 클래스 사용하여 페이지 중앙에 정렬 -->
        <h1 class="text-center">장보기 목록</h1> <!-- 중앙에 정렬된 제목 -->

        <!-- Bootstrap의 표(table) 구성 -->
        <table class="table text-center">
            <thead>
                <tr>
                    <th>번호</th> <!-- 테이블 헤더: 번호 -->
                    <th>품목</th> <!-- 테이블 헤더: 품목 -->
                </tr>
            </thead>
            <tbody>
            <%
            // Java 코드를 사용하여 장보기 목록을 리스트로 정의
            List<String> goodsList = Arrays.asList( 
                "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
            );
            
            // 리스트의 크기만큼 반복하며 테이블 행(row)을 생성
            for(int i = 0; i < goodsList.size(); i++) {
            %>
                <tr>
                    <td><%= i + 1 %></td> <!-- 번호 출력 (리스트의 인덱스 + 1) -->
                    <td><%= goodsList.get(i) %></td> <!-- 리스트에서 품목 가져와 출력 -->
                </tr>
            <%
            } // for문 종료
            %>
            </tbody>
        </table>
    </div>
</body>
</html>
