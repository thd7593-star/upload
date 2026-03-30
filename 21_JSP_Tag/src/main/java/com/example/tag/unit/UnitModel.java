package com.example.tag.unit;

import javax.servlet.http.HttpServletRequest;

public class UnitModel {

    public static void calc(HttpServletRequest request) {

        //1. 값 받기
        double value = Double.parseDouble(request.getParameter("value"));
        String type = request.getParameter("type");
        String ed = "";
        String st = "";

        double result = 0;

        if (type.equals("cm")) {
            result = value / 2.54;
            st += "cm";
            ed += "inch";
        } else if (type.equals("m2")) {
            result = value * 0.3025;
            st += "m2";
            ed += "평";
        } else if (type.equals("temp")) {
            result = (value * 9 / 5) + 32;
            st += "℃";
            ed += "℉";
        } else if (type.equals("speed")) {
            result = value / 1.609344;
            st += "km/h";
            ed += "mi/h";
        }

        //결과에서 뭘 쓸지? (객체를 사용해야지!!)

        String result2 = String.format("%.1f"
                ,result);
        UnitVO unitVO = new UnitVO(value, type, ed, st, result2);
        request.setAttribute("unit", unitVO);
    }

    public static void UnitVO(HttpServletRequest request) {
    }
}
