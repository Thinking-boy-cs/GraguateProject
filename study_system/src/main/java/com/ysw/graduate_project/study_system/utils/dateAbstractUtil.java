package com.ysw.graduate_project.study_system.utils;
import java.util.Date;
/**
 * @author Yu shuaiwen
 * @date 2022/04/27 15:25
 */

/**
 * 日期提取工具
 */
public class dateAbstractUtil {
    int getYear(Date myDate){
        return Integer.parseInt(String.format("%tY",myDate));
    }

    int getMonth(Date myDate){
        return Integer.parseInt(String.format("%tm",myDate));
    }

    int getDay(Date myDate){
        return Integer.parseInt(String.format("%td",myDate));
    }


}
