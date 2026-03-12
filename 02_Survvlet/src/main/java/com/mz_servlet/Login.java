package com.mz_servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Login")
public class Login extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
			String i = request.getParameter("id"); //내가 입력한 파라미터 보고 한거 ㅎ 
			String p = request.getParameter("pw"); //내가 입력한 파라미터 보고 한거 ㅎ 
			System.out.println(i);
			System.out.println(p);
			
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			out.print("<html>"); //콘솔이아닌 브라우저에 나오는것 
			
			
			out.print("<style>"); 
			out.print("h2{color:red}");
			out.print("</style>");
			
			out.print("<head>");
			out.print("<meta charset=\"UTF-8\">");
			out.print("</head>");
			
			out.print("<body>");
			
			
			
			String status = "";
			
			if (i.equals("gh")) {
				if (p.equals("1004")) {
					status ="로그인 성공 우이~"; //브라우저에 나타날때는 out.print이나 위에 status해서 하는방법 
				}else {
					status="비번오류";
				}
			} else {
				status="존재하지않는회원";
			}
			
			out.print("<h1>ID : " + i +"</h1>");
			out.printf("<h1>PW : %s</h1> ", p);
			out.printf("<h2>%s</h2>",status);
			
			out.print("</body>");
			out.print("</html>");
			
	
	}		

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String i = request.getParameter("id"); //내가 입력한 파라미터 보고 한거 ㅎ 
		String p = request.getParameter("pw"); //내가 입력한 파라미터 보고 한거 ㅎ 
		System.out.println(i);
		System.out.println(p);
		
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.print("<html>"); //콘솔이아닌 브라우저에 나오는것 
		
		
		out.print("<style>"); 
		out.print("h2{color:red}");
		out.print("</style>");
		
		out.print("<head>");
		out.print("<meta charset=\"UTF-8\">");
		out.print("</head>");
		
		out.print("<body>");
		
		
		
		String status = "";
		
		if (i.equals("gh")) {
			if (p.equals("1004")) {
				status ="로그인 성공 우이~"; //브라우저에 나타날때는 out.print이나 위에 status해서 하는방법 
			}else {
				status="비번오류";
			}
		} else {
			status="존재하지않는회원";
		}
		
		out.print("<h1>ID : " + i +"</h1>");
		out.printf("<h1>PW : %s</h1> ", p);
		out.printf("<h2>%s</h2>",status);
		
		out.print("</body>");
		out.print("</html>");	
	}

}
