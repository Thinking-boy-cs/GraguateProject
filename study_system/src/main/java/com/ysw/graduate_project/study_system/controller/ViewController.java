package com.ysw.graduate_project.study_system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Yu shuaiwen
 * @date 2022/04/07 20:09
 */
@Controller
@RequestMapping("view")
public class ViewController {

    @RequestMapping("find")
    public String findAll(){
        return "findAll";
    }

    @RequestMapping("insert")
    public String insertUser(){
        return "insertUser";
    }

    @RequestMapping("findUser")
    public String findUser(){
        return "updateUser";
    }

    @RequestMapping("showDataItem")
    public String showDataItem(){
        return "showData";
    }

    @RequestMapping("showSignItem")
    public String showSignItem(){
        return "showSign";
    }

//    @RequestMapping("findSignItemByTelNumber")
//    public String findSignItemByTelNumber(){
//        return "findSignItemByTelNumber";
//    }
}
