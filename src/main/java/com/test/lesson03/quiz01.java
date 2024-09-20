package com.test.lesson03;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/quiz01")
public class quiz01 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws IOException {
		
	// response header 세팅
	response.setContentType("text/plain");	
		
	// DB 연결 
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	// 테이블 insert 
	String insertQuery ="insert into `real_estate`"
			+ "(`realtorId`,`address`,`area`,`type`,`price`,`rentPrice`)"
			+ "values"
			+ "(3,'헤라펠리스 101동 5305호',350,'매매',1500000,null);";

	try {
		ms.update(insertQuery);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	// 테이블 조회 및 출력
	PrintWriter out = response.getWriter();
	String selectQuery = "select `address`,`area`,`type`"
			+ "from `real_estate`"
			+ "limit 10;";
	try {
		ResultSet res = ms.select(selectQuery);
		while (res.next()) { // 결과 행이 있는 동안 수행.
			out.println(res.getString("주소 : "+"address")); // 주소
			out.println(res.getInt("면적 : "+"area")); // 면적 
			out.println(res.getInt("타입 : "+"type")); // 타입
			
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	// DB 연결 해제 반드시 마지막에 
	ms.disconnect();
	
	}
}
