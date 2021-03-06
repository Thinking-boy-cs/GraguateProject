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

    @RequestMapping("checkSign")
    public String checkSign(){
        return "checkSign";
    }

    @RequestMapping("signCalendar")
    public String signCalendar(){
        return "signCalendar";
    }

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


    /**
     * 日历
     * @return
     */
    @RequestMapping("showCalendar")
    public String showCalendar(){
        return "showCalendar";
    }

    /**
     * 推荐系统
     * @return
     */
    @RequestMapping("recommendSystem")
    public String recommendSystem(){
        return "recommendSystem";
    }

    @RequestMapping("recommend_t")
    public String recommend_t(){
        return "recommend_t";
    }

    @RequestMapping("recommend_c")
    public String recommend_c(){
        return "recommend_c";
    }

    @RequestMapping("recommend_x")
    public String recommend_x(){
        return "recommend_x";
    }

    @RequestMapping("recommend_z")
    public String recommend_z(){
        return "recommend_z";
    }


    /**
     * 文档
     * @return
     */
    @RequestMapping("doc")
    public String doc(){
        return "doc";
    }

    /**
     * 精准画像
     * @return
     */
    @RequestMapping("selfPic")
    public String selfPic(){
        return "selfPic";
    }


    /**
     * 社区
     * @return
     */
    @RequestMapping("community")
    public String community(){
        return "community";
    }

    @RequestMapping("questionAdd")
    public String questionAdd(){
        return "questionAdd";
    }

    @RequestMapping("community_m")
    public String community_m(){
        return "community_m";
    }

    @RequestMapping("questionAdd_m")
    public String questionAdd_m(){
        return "questionAdd_m";
    }

    @RequestMapping("commentAdd")
    public String commentAdd(){
        return "commentAdd";
    }

    @RequestMapping("commentAdd_m")
    public String commentAdd_m(){
        return "commentAdd_m";
    }
}



