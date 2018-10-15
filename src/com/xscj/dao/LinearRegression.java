package com.xscj.dao;

import java.util.Scanner;
//回归算法测试类
public class LinearRegression {  
	//定义最大的训练集数据个数  
    private static final int MAX_POINTS = 10;  
  
    private double E;  
  
    /** 
     *  
     *  
     * @param args 
     *            the array of runtime arguments 
     */  
    public static void main(String args[]) {
    	//初始化线性回归类对象line，并且初始化类
        RegressionLine line = new RegressionLine();  
        line.addDataPoint(new DataPoint(1, 69));  
        line.addDataPoint(new DataPoint(2, 14));  
        line.addDataPoint(new DataPoint(3, 12));  
        line.addDataPoint(new DataPoint(4, 14));  
        line.addDataPoint(new DataPoint(5, 17));  
      //调用printSums方法打印Sum变量
        printSums(line);
      //调用printLine方法并打印线性方程 
        printLine(line);  
    }  
  
    /** 
     * Print the computed sums. 
     *  
     * @param line 
     *            the regression line 
     */  
  //打印Sum数据方法
    private static void printSums(RegressionLine line) {  
        System.out.println("\n数据点个数 n = " + line.getDataPointCount());  
        System.out.println("\nSum x  = " + line.getSumX());  
        System.out.println("Sum y  = " + line.getSumY());  
        System.out.println("Sum xx = " + line.getSumXX());  
        System.out.println("Sum xy = " + line.getSumXY());  
        System.out.println("Sum yy = " + line.getSumYY());  
  
    }  
  
    /** 
     * Print the regression line function. 
     *  
     * @param line 
     *            the regression line 
     */  
    private static void printLine(RegressionLine line) {  
        System.out.println("\n回归线公式:  y = " + line.getA1() + "x + "  
                + line.getA0());  
        System.out.println("误差：     R^2 = " + line.getR());  
    }  
      
    //y = 2.1x + 133.7   2.1 * 6 + 133.7 = 12.6 + 133.7 = 146.3  
    //y = 2.1x + 133.7   2.1 * 7 + 133.7 = 14.7 + 133.7 = 148.4  
  
}  