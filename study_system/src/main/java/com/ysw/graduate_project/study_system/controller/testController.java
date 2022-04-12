package com.ysw.graduate_project.study_system.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Yu shuaiwen
 * @date 2022/04/12 21:13
 */

@Controller
@Slf4j
@RequestMapping("test")
public class testController {

    @RequestMapping("backControl")
    public String test(){
        return "test"; //跳转到以"index"为名的jsp了
    }

}
