package com.plum.bmi;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Bmivo {

    private String name;
    private double height;
    private double weight;
    private String bmi;
    private String result;
}