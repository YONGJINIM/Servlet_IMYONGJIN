package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz07")
public class GetMethodQuiz07 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request , HttpServletResponse response) throws IOException {
		
		// 인코딩
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		String address =  request.getParameter("address"); // address 
		String creditCard =  request.getParameter("creditCard"); // creditCard
		int price = Integer.parseInt(request.getParameter("price")); // price
		
		PrintWriter out = response.getWriter();
	
		out.print("<html><head><title></title></head><body>");  
		
		// 주소에 "서울시"가 포함되어 있는지 확인
		if(address != null && address.contains("서울시")) {
			out.print(address + " 배달 준비중");
		} else {
			out.print("배달 불가 지역입니다.");
		}
		
		// 카드가 "신한카드"인지 확인
		if(creditCard != null && creditCard.equals("신한카드")) {
			out.print(" 결제 불가 카드 입니다.");
		}
		
		out.print("<br>");
		out.print(price + "원");
		
		out.print("</body></html>");
	}
}
