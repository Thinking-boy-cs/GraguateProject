package com.ysw.graduate_project.study_system.controller;

import com.ysw.graduate_project.study_system.entity.DataItem;
import com.ysw.graduate_project.study_system.service.DataItemService;
import com.ysw.graduate_project.study_system.utils.dateAbstractUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author Yu shuaiwen
 * @date 2022/04/10 21:59
 */

/**
 * 数据可视化
 */

@RestController
@Slf4j
@RequestMapping("data")
public class DataController {

    @Autowired
    private DataItemService dataService;


    @RequestMapping("showData")
    public List<DataItem> showData(){
        return dataService.showDataItem();
    }

    /**
     * 统计各个学院的注册情况
     * @return
     */
    @RequestMapping("showCollege")
    public List<DataItem> showCollege(){
        return dataService.showCollege();
    }


    /**
     * 统计男女生使用情况
     * @return
     */
    @RequestMapping("showSex")
    public List<DataItem> showSex(){
        return dataService.showSex();
    }

    /**
     * 统计不同学历的使用情况
     * @return
     */
    @RequestMapping("showDegree")
    public List<DataItem> showDegree(){
        return dataService.showDegree();
    }

    dateAbstractUtil dateAbstractUtil = new dateAbstractUtil();

    @RequestMapping("showSignYears")
    public List<DataItem> showSignYears(){
        return dataService.showSignYears();
    }

    @RequestMapping("showSignMonths")
    public List<DataItem> showSignMonths(int year){
        year = year-2000;
        String tmp = String.valueOf(year);
        log.info("This the year:[{}]",tmp);
        return dataService.showSignMonths(tmp);
    }

    @RequestMapping("showSignDays")
    public List<DataItem> showSignDays(int year,int month){
        year = year-2000;
        String tmp1 = String.valueOf(year);
        String tmp2 = String.valueOf(month);
        log.info("This the year:[{}]",tmp1);
        log.info("This the month:[{}]",tmp2);
        return dataService.showSignDays(tmp1,"0"+tmp2);
    }
}

