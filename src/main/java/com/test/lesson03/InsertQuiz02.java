package com.test.lesson03;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/Quiz02_1.jsp")
public class InsertQuiz02 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request , 
			HttpServletResponse response) throws IOException {
		
		// 값 가져오기
		String name = request.getParameter("name");
		String url = request.getParameter("url");	
		
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// insert 쿼리 수행 후 잘 들어왔는지 확인 
		String insertQurey = "insert into `bookmark`"
			+ "(`name`,`url`)"
			+ "values"
			+ "('" + name + "','" + url + "');";
			
		try {
			ms.update(insertQurey);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// DB 연결 해제 
		ms.disconnect();
		
		
		// 유저 목록 화면 302 redirect
		response.sendRedirect("/lesson03/quiz02.jsp");
	}
}
