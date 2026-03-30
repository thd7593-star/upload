package com.bmi.plum.bmi;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.servlet.http.HttpServletRequest;
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Bmi {

    private String name;
    private double height;
    private double weight;
    private double bmi;
    private String result;


}