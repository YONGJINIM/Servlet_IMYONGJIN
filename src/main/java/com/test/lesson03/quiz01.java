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
public class quiz01 extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, 
            HttpServletResponse response) throws IOException {
        
        // response header 세팅
        response.setContentType("text/plain");    
        
        // DB 연결 
        MysqlService ms = MysqlService.getInstance();
        ms.connect();
        
        // 테이블 insert 
        String insertQuery = "INSERT INTO `real_estate` "
                + "(`realtorId`, `address`, `area`, `type`, `price`, `rentPrice`) "
                + "VALUES "
                + "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, null);";

        try {
            ms.update(insertQuery);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        // 테이블 조회 및 출력
        PrintWriter out = response.getWriter();
        String selectQuery = "SELECT `address`, `area`, `type` "
                + "FROM `real_estate` "
                + "LIMIT 10;";
        
        try {
            ResultSet res = ms.select(selectQuery);
            while (res.next()) { // 결과 행이 있는 동안 수행.
                out.println("주소: " + res.getString("address")); // 주소
                out.println("면적: " + res.getInt("area")); // 면적
                out.println("타입: " + res.getString("type")); // 타입
                out.println("----------------------");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        // DB 연결 해제 반드시 마지막에 
        ms.disconnect();
    }
}
