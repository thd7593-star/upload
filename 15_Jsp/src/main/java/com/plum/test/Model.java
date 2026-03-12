package com.plum.test;

import javax.servlet.http.HttpServletRequest;

public class Model {
    public static void makeInfo(HttpServletRequest request) {

        String name = request.getParameter("name");
        String age = request.getParameter("age");
        String gender = request.getParameter("gender");
        String[] habit = request.getParameterValues("habit");
        System.out.println(name);
        System.out.println(age);
        System.out.println(gender);

        String habit2 = "";
        for (String h : habit) {
            System.out.println(h);
            habit2 += h + " / ";

        }

        //결과에서 필요한거 생각하기
        //한번에 뭉쳐서 보내자! = 객체를 만들자! //information이라는 클래스 생성
        Information info = new Information(name, age, gender, habit2);
        request.setAttribute("information", info); //자바에서 만든값이니까 에트리뷰트로 넘긴다!!


    }
}
