package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz08")
public class GetMethodQuiz08 extends HttpServlet{

	
	@Override
	public void doGet(HttpServletRequest request , HttpServletResponse response) throws IOException {
		
		// 인코딩
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String keyword = request.getParameter("keyword");
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		
		out.print("<html><head><title></title></head><body>");  
		// 리스트 순회 
		for (int i =0; i < list.size(); i++) { // 0 ~ 4 인덱스 
			String text = list.get(i);
			if (text.contains(keyword)) {
				// 맛집 -> <b>맛집</b>
				// 1) 첫번째 방식
			    // text = text.replace(keyword, "<b>"+ keyword + "</b>");
				
				// 2) 두번째 방식
				 String[] words = text.split(keyword); // 0, 1 인덱스만 존재 
			     out.print(words[0] +"<b>"+ keyword + "</b>" + words[1] + "<br>");
			}
		}
		out.print("</body></html>");
		
		
		
		
		
	}
}
