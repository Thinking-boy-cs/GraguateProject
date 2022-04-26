package com.ysw.graduate_project.study_system.controller;

import com.ysw.graduate_project.study_system.entity.DataItem;
import com.ysw.graduate_project.study_system.service.DataItemService;
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

}

