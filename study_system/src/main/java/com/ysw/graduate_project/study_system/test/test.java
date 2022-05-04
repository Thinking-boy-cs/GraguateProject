package com.ysw.graduate_project.study_system.test;

/**
 * @author Yu shuaiwen
 * @date 2022/04/27 15:24
 */

import com.ysw.graduate_project.study_system.entity.User;
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
        User user = null;
        if(StringUtils.isEmpty(user)){
            System.out.println("user is null");
        }else{
            System.out.println("user is not null");
        }

    }
}

