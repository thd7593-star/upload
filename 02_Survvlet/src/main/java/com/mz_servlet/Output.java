package com.mz_servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Output")
public class Output extends HttpServlet {

   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
//		파라미터 가져와라~ 
			String s = request.getParameter("say");
			String c = request.getParameter("cnt");
			int cc = Integer.parseInt(c);
			for (int i = 0; i < cc; i++) {
				System.out.println(s);
			}
			
			
			//브라우저에 뭘 쓰고싶다 (html)
			
			//vs코드처럼 보자 
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			out.print("<html>"); //콘솔이아닌 브라우저에 나오는것 
			
			out.print("<head>");
			out.print("<meta charset=\"UTF-8\">");
			out.print("</head>");
			
			out.print("<body>");
			for (int i = 0; i < cc; i++) {
				out.print("<h1>" + s + "</h1>");
			}
			out.print("</body>");
			out.print("</html>");
			
			
	
	
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	
}
