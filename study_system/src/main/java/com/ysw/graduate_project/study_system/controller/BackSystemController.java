package com.ysw.graduate_project.study_system.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Yu shuaiwen
 * @date 2022/04/12 21:13
 */

/**
 * 后台管理部分
 */


@Controller
@Slf4j
@RequestMapping("backSystem")
public class BackSystemController {

    @RequestMapping("backControl")
    public String test(){
        return "backSystem"; //跳转到以"index"为名的jsp了
    }


    @RequestMapping("backSystem_u")
    public String backSystem_u(){
        return "backSystem"; //跳转到以"index"为名的jsp了
    }

    @RequestMapping("backSystem_m")
    public String backSystem_m(){
        return "backSystem_m"; //跳转到以"index"为名的jsp了
    }

}
