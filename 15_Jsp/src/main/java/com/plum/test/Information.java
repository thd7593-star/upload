package com.plum.test;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor //기본생성자 생성
@AllArgsConstructor//오버로딩생성자 생성
@Data //게터 세터 투스트링 다 들어감~ 우이


public class Information {
    private String name;
    private String age;
    private String gender;
    private String habit;


    // alt + insert 해서 게터세터 그리고 기본생성자 오버로딩 생성자 해야지
//근데 그걸 편하게 만드는게 있지~ 롬복? 강사님이 주신 코드 pom xml에 디팬더시스 안에 붙이기!!


}



