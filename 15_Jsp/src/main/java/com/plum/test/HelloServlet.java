package com.plum.test;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {



    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        //mvc - 분리0를 한다는것! / 여기서는 교통정리만 한다는 느낌 ~~ !!
        // 계산식을 모델이라는 걸 만들어서 하자~
        //1. 값 받기
        //2. 콘솔에 찍어서 컨펌

        Model.makeInfo(request); //모델이라는 클래스에서 메이크인포를 리케스트~ //알트 엔터해서 클래스 만들고 또해서 모델안에 그거만들고


        //어디로?
        request.getRequestDispatcher("output.jsp").forward(request, response);
    }
    public void destroy() {
    }
}