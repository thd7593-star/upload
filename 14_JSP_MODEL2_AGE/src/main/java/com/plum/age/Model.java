package com.plum.age;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;

public class Model {
    
    public static void calcAge(HttpServletRequest request) {
        
        //1. 값 받기 
      int birth = Integer.parseInt( request.getParameter("birth")) ;

      //내년에도 쓸 수 있게 객체 만들어서 ~
        Date date = new Date();

//데이트 쓰면 심플데이트포멧 무조건 같이 쓰자
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
                String year = sdf.format(date); // 이게 연도가 되는것

        //2번째 추천 방법
        int year2 = LocalDate.now().getYear();

        //한국나이 계산
        int age = year2- birth + 1;


        //결과페이지에서 뭘 쓸지?
        //년생, 나이

        Bean b = new Bean();
        b.setBirth(birth);
        b.setAge(age);


        Bean b1 = new Bean(birth, age);

        request.setAttribute("bean", b1);


    }
}
