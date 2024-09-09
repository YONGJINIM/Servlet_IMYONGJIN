package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz04")
public class UrlMappingQuiz04 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 인코딩 
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		
		for (int i = 1; i <= 30 ; i++) {			
			out.println("<html><head><title>quiz04</title><body></body><ul>");
			out.print("<li>"+ i +"번 째 리스트</li>");
			out.print("</ul></head></thml>");			
		}
		
		
		
	}
}
