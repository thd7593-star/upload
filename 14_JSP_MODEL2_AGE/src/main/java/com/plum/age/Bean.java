package com.plum.age;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Data //이거는 겟터셋터를 만들어주는것!
@NoArgsConstructor //기본생성자 자동으로 만들어주는것
@AllArgsConstructor //오버로딩 생성자 자동으로 만들어주는거 MODEL에

public class Bean {


    private int birth;
    private int age;





}
