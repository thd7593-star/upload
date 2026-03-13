package com.plum.test;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.servlet.http.HttpServletRequest;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Model {


    private String payer;
    private int people;
    private int money;

    public static void makeInfo(HttpServletRequest request) {

        String payer = request.getParameter("payer");
        int people = Integer.parseInt(request.getParameter("people"));
        int money = Integer.parseInt(request.getParameter("money"));

        System.out.println(payer);
        System.out.println(people);
        System.out.println(money);


        Model m = new Model(payer, people, money);


        request.setAttribute("model", m);

    }
}
