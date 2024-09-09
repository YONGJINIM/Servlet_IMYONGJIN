package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz05")
public class GetMethodQuiz05 extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        
        // 인코딩
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");
        
        // request param 
        int number = Integer.parseInt(request.getParameter("number")); // number: request parameter
        
        // HTML 응답 출력
        PrintWriter out = response.getWriter();
        
        out.println("<html><head><title>구구단 출력</title></head><body>");
        out.println("<h1>" + number + "단</h1>");
        out.println("<ul>");  // 리스트 시작
        
        // 구구단 출력
        for (int i = 1; i <= 9; i++) {
            out.println("<li>" + number + " X " + i + " = " + (number * i) + "</li>");
        }
        
        out.println("</ul>");  // 리스트 끝
        out.println("</body></html>");  // HTML 끝
    }
}
