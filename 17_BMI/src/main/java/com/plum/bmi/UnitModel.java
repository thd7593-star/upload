package com.plum.bmi;

import javax.servlet.http.HttpServletRequest;

public class UnitModel {

    public static void calc(HttpServletRequest request) {

        String name = request.getParameter("name");
        double height = Double.parseDouble(request.getParameter("height"));
        double weight = Double.parseDouble(request.getParameter("weight"));

        double h = height / 100.0;
        double bmi = weight / (h * h);

        String r = String.format("%.2f", bmi);

        String result;

        if (bmi < 18.5) {
            result = "저체중";
        } else if (bmi <= 22.9) {
            result = "정상";
        } else if (bmi <= 24.9) {
            result = "비만 전단계";
        } else if (bmi <= 29.9) {
            result = "1단계 비만";
        } else if (bmi <= 34.9) {
            result = "2단계 비만";
        } else {
            result = "3단계 비만";
        }


        Bmivo b = new Bmivo(name, height, weight, r, result);


        request.setAttribute("bmi", b);
    }
}