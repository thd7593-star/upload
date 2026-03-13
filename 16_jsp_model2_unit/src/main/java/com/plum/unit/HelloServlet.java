package com.plum.unit;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        //일
        UnitModel.calc(request);

        //어디로 보낼지?
        request.getRequestDispatcher("cm.jsp").forward(request, response);


    }
}