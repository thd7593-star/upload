package com.mz_servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/OddEven")
public class OddEven extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
			String n = request.getParameter("num"); //내가 입력한 파라미터 보고 한거 ㅎ 
			System.out.println(n);
			
			int n2 = Integer.parseInt(n);
			if(n2 % 2 == 0) {
				System.out.println("짝");
			} else {
				System.out.println("홀");
			} // 이거하면 콘솔에 나옴 ! 
			
			//브라우저에 뭘 쓰고싶다 (html)
			
			
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			out.print("<html>"); //콘솔이아닌 브라우저에 나오는것 
			
			out.print("<head>");
			out.print("<meta charset=\"UTF-8\">");
			out.print("</head>");
			
			out.print("<body>");
			
			if(n2 % 2 == 0) { //브라우저에 나타낼때는 out.print 
				out.print("<h1>짝</h1>");
			} else {
				out.print("<h1>홀</h1>");
			}
			
			out.print("</body>");
			out.print("</html>");
			
	
	}		

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
