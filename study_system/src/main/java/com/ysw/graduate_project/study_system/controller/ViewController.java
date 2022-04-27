package com.ysw.graduate_project.study_system.controller;

import com.ysw.graduate_project.study_system.entity.SignItem;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author Yu shuaiwen
 * @date 2022/04/07 20:09
 */
@Controller
@Slf4j
@RequestMapping("view")
public class ViewController {

    //用户查询
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


    /**
     * 数据可视化
     * @return
     */
    @RequestMapping("showDataItem")
    public String showDataItem(){
        return "showData";
    }

    /**
     * 打卡管理
     * @return
     */
    @RequestMapping("showSignItem")
    public String showSignItem(){
        return "showSign";
    }

    @RequestMapping("findSignByName")
    public String showSignItemByName(){
        return "findSignByName";
    }

//    @RequestMapping("findSignItemByTelNumber")
//    public String findSignItemByTelNumber(){
//        return "findSignItemByTelNumber";
//    }

    //info Part
    @RequestMapping("infoAdd")
    public String infoAdd(){
        return "infoAdd";
    }

    @RequestMapping("infoFind")
    public String infoFind(){
        return "infoList";
    }

    @RequestMapping("infoFind_u")
    public String infoFind_u(){
        return "infoList_u";
    }


    //upload Part
    @RequestMapping("uploadFind")
    public String uploadFind(){
        return "uploadList";
    }


}



