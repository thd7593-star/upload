package com.bmi.plum.bmi;

import javax.servlet.http.HttpServletRequest;

public class BmiModel {

    public static void calc(HttpServletRequest request) {

        String name = request.getParameter("name");
        double height = Double.parseDouble(request.getParameter("height"));
        double weight = Double.parseDouble(request.getParameter("weight"));

        double h = height / 100.0;
        double bmi = weight / (h * h);

        String result;

        if (bmi >= 25) {
            result = "비만";
        } else if (bmi >= 23) {
            result = "과체중";
        } else if (bmi >= 18.5) {
            result = "정상";
        } else {
            result = "저체중";
        }

        Bmi b = new Bmi(name, height, weight, bmi, result);

        request.setAttribute("b", b);
    }
}