package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz09")
public class PostMethodQuiz09 extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request , HttpServletResponse response) throws IOException {
		
		
		response.setContentType("text/html");
		
		// name 지원자명 가져오기 
		String name = request.getParameter("name");
		// name 지원자의 자기소개 가져오기
		String introduce = request.getParameter("introduce");
		
		PrintWriter out = response.getWriter();
		
		// 출력
		out.print("<html><head><title>quiz09</title><body></body>");
		out.print("<b>" + name +"</b>"+"님 지원이 완료되었습니다.");
		out.print("<h2>"+ "지원내용" + "</h2>" + introduce);
		out.print("</head></thml>");
	}
}
