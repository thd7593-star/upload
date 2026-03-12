package com.mz_servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Calc2")
public class Calc2 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int xx = Integer.parseInt(request.getParameter("x"));
		int yy = Integer.parseInt(request.getParameter("y"));

		String[] op = request.getParameterValues("oper");

		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();

		out.print("<html>");
		out.print("<head>");
		out.print("<meta charset='UTF-8'>");
		out.print("</head>");
		out.print("<body>");

		out.print("<div style='width:500px; background-color:pink; border:2px solid;'>");

		

			for (String operator : op) {

				if (operator.equals("a")) {
					out.printf("<div>%d + %d = %d</div>", xx, yy, xx + yy);

				} else if (operator.equals("b")) {
					out.printf("<div>%d - %d = %d</div>", xx, yy, xx - yy);

				} else if (operator.equals("c")) {
					out.printf("<div>%d x %d = %d</div>", xx, yy, xx * yy);

				} else if (operator.equals("d")) {

					if (yy == 0) {
						out.print("<div>0으로 못나눕니당 ㅎㅎ ^^</div>");
					} else {
						out.printf("<div>%d / %d = %.2f</div>", xx, yy, (double) xx / yy);
					}

				}

			}

		

		out.print("</div>");
		out.print("</body>");
		out.print("</html>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}
