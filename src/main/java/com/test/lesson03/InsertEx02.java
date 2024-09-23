package com.test.lesson03;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/insert_ex02")
public class InsertEx02 extends HttpServlet{

	
	@Override
	public void doPost(HttpServletRequest request , 
			HttpServletResponse response) throws IOException {

		// response header 생략 
		
		// request parameter 꺼내고 잘 들어오는 지 확인 
		String name = request.getParameter("name");
		String yyyymmdd = request.getParameter("yyyymmdd");
		String email = request.getParameter("email");
		String introduce = request.getParameter("introduce");
		
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// insert 쿼리 수행 후 잘 들어왔는지 확인 
		String insertQurey = "insert into `new_user`"
				+ "(`name`,`yyyymmdd`,`email`,`introduce`)"
				+ "values"
				+ "('" + name + "','" + yyyymmdd + "','" +	email +"','"+ introduce +"');";
		try {
			ms.update(insertQurey);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// DB 연결 해제 
		ms.disconnect();
		
		// 유저 목록 화면으로 이동 => redirect 
		response.sendRedirect("/lesson03/ex02_1.jsp");
		
		
		
	}
}
