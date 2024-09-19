<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IPTV Channels</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
<%
    List<Map<String, String>> list = new ArrayList<>();
    Map<String, String> map = new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); }};
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); }};
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); }};
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); }};
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "54"); put("name", "OCN"); put("category", "영화"); }};
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "56"); put("name", "Screen"); put("category", "영화"); }};
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "57"); put("name", "Mplex"); put("category", "영화"); }};
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); }};
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); }};
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); }};
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "3"); put("name", "tvN"); put("category", "예능"); }};
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "28"); put("name", "MBC Every1"); put("category", "예능"); }};
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "48"); put("name", "JTBC2"); put("category", "예능"); }};
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "49"); put("name", "E채널"); put("category", "예능"); }};
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "120"); put("name", "SPOTV"); put("category", "스포츠"); }};
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "121"); put("name", "KBSN 스포츠"); put("category", "스포츠"); }};
    list.add(map);
    
    // Get the category parameter from the URL
    String category = request.getParameter("category");
    List<Map<String, String>> filteredList = new ArrayList<>();
    
    // Filter the list based on the selected category
    if (category != null && !category.equals("전체")) {
        for (Map<String, String> channel : list) {
            if (channel.get("category").equals(category)) {
                filteredList.add(channel);
            }
        }
    } else {
        filteredList = list;
    }
%>
<div class="container mt-4">
    <!-- Header: Sk Broadband IPTV -->
    <header class="mb-4">
        <h1 class="text-center text-primary">Sk Broadband IPTV</h1>
    </header>
    
    <!-- Navigation: 전체, 지상파, 드라마, 예능, 영화, 스포츠 -->
    <nav class="mb-4">
        <div class="btn-group d-flex justify-content-center" role="group">
            <a href="quiz08_1.jsp?category=전체" class="btn btn-outline-primary">전체</a>
            <a href="quiz08_1.jsp?category=지상파" class="btn btn-outline-primary">지상파</a>
            <a href="quiz08_1.jsp?category=드라마" class="btn btn-outline-primary">드라마</a>
            <a href="quiz08_1.jsp?category=예능" class="btn btn-outline-primary">예능</a>
            <a href="quiz08_1.jsp?category=영화" class="btn btn-outline-primary">영화</a>
            <a href="quiz08_1.jsp?category=스포츠" class="btn btn-outline-primary">스포츠</a>
        </div>
    </nav>

    <main>
        <div class="row">
            <table class="table table-bordered text-center">
                <thead class="bg-primary text-white">
                    <tr>
                        <th>채널</th> 
                        <th>채널명</th> 
                        <th>카테고리</th>
                    </tr>
                </thead>
                <tbody>
                <% 
                for (Map<String, String> channel : filteredList) {           
                %>
                    <tr>
                        <td><%= channel.get("ch") %></td> 
                        <td><%= channel.get("name") %></td> 
                        <td><%= channel.get("category") %></td> 
                    </tr>         
                <% 
                } 
                %>                                      
                </tbody>
            </table>
        </div>
    </main>

    <footer class="text-center mt-4">
        <div>
            <small>Copyright 2021. marondal All Rights Reserved</small>
        </div>
    </footer>
</div>
</body>
</html>
