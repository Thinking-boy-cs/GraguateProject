package com.ysw.graduate_project.study_system.test;

/**
 * @author Yu shuaiwen
 * @date 2022/04/27 15:24
 */

import com.ysw.graduate_project.study_system.entity.User;
import com.ysw.graduate_project.study_system.utils.MaxTool;
import org.springframework.util.StringUtils;

import java.util.Date;

public class test {
    public static void main(String[] args) {
//        Date myDate = new Date();
//        System.out.println("当前时间："+myDate);
//
//        int year = Integer.parseInt(String.format("%tY",myDate));
//        System.out.println("年："+year);
//        int month = Integer.parseInt(String.format("%tm",myDate));
//        System.out.println("月："+month);
//        int day = Integer.parseInt(String.format("%td",myDate));
//        System.out.println("日："+day);
//        int hour = Integer.parseInt(String.format("%tH",myDate));
//        System.out.println("时："+hour);
//        int minute = Integer.parseInt(String.format("%tM",myDate));
//        System.out.println("分："+minute);
//        int second = Integer.parseInt(String.format("%tS",myDate));
//        System.out.println("秒："+second);

//        User user = null;
//        System.out.println(user);
//        if(user==null){
//            System.out.println("user is null");
//        }else{
//            System.out.println("user is not null");
//        }
//        User user = null;
//        if(StringUtils.isEmpty(user)){
//            System.out.println("user is null");
//        }else{
//            System.out.println("user is not null");
//        }
//        double e = 2.718;
//        double tmp = Math.pow(e,2);
//        System.out.println("e的平方"+tmp);


        //  定义一个数组，用静态初始化完成元素初始化
        double[] arr = {11.1, 5.5, 22.5, 4.4, 33.3};
        //调用获取最大值的方法，用变量接收返回值

        double max = getMax(arr);
        //把结果输出在控制台
        System.out.println(max);

    }

    static double getMax(double[] arr){
        double max = arr[0];
        for (int i = 1; i < arr.length; i++) {
            if (max < arr[i]) {
                max = arr[i];
            }
        }
        return max;
    }
}

