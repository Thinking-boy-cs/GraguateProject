package com.ysw.graduate_project.study_system.dao;

import com.ysw.graduate_project.study_system.entity.DataItem;
import org.apache.ibatis.annotations.Mapper;

import java.util.*;

/**
 * @author Yu shuaiwen
 * @date 2022/04/10 22:40
 */

@Mapper
public interface DataItemDao {

    //测试
    List<DataItem> showDataItem();

    //1.统计各个学院的注册情况
    List<DataItem> showCollege();

    //2.统计男女的注册情况
    List<DataItem> showSex();

    //3.统计不同学历的注册情况
    List<DataItem> showDegree();

    //4.统计不同年份的打卡情况
    List<DataItem> showSignYears();

    //5.统计某一年不同月份的打卡情况
    List<DataItem> showSignMonths(String year);

    //6.统计某一年某一月不同日期的打卡情况
    List<DataItem> showSignDays(String year,String month);
}
