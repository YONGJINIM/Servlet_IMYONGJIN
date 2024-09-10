package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request , HttpServletResponse response) throws IOException {
		
		// 헤더 응답세팅 추가!
		// 테스트 주석
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		// Request Rarameter 
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		
		
		PrintWriter out = response.getWriter();
		// {"user_id":"marobiana" , "name":"신보람", "age":27}
		out.print("{\"user_id\":\"" + userId + 
				"\", \"name\":\""+ name + "\", "+
				"\"age\":" + age+ "}");
		
//		out.print("결과");
//		out.println("사용자 아이디 : " + userId);
//		out.println("사용자 이름 : " + name);
//		out.println("사용자 나이 : " + age);
	}

}
