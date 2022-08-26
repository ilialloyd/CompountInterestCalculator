package com.example.calculator;
/*
 *           Leave your comment below if you have
 --------------------------------------------------------
 *
 */

public class Utils {
    public static double calculateCompoundInterest (double principal, double interest,int years, int compoundPeriod){
        return Math.round(principal * Math.pow(1+(interest/compoundPeriod),(compoundPeriod*years)));
    }
}
