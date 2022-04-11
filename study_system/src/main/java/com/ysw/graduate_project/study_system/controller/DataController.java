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
}

