package com.plum.bmi;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {

        request.setCharacterEncoding("UTF-8");

        // Model에서 BMI 계산한거 요청하자
        UnitModel.calc(request);

        // 결과 이동하자
        request.getRequestDispatcher("BMI.jsp").forward(request, response);
    }
}