package com.example.tag.unit;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet("/unit")
public class Unitc extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setAttribute("contentPage", "unit/index.jsp");
        request.getRequestDispatcher("main.jsp").forward(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        UnitModel.calc(request);

        request.setAttribute("contentPage", "unit/cm.jsp");
        request.getRequestDispatcher("main.jsp").forward(request,response);


    }

    public void destroy() {
    }
}