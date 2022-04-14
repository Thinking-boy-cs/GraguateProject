package com.ysw.graduate_project.study_system.controller;

import com.ysw.graduate_project.study_system.entity.DataItem;
import com.ysw.graduate_project.study_system.entity.SignItem;
import com.ysw.graduate_project.study_system.service.DataItemService;
import com.ysw.graduate_project.study_system.service.SignItemService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author Yu shuaiwen
 * @date 2022/04/14 19:57
 */

@Controller
@RequestMapping("sign")
@Slf4j
public class SignController {

    @Autowired
    private SignItemService signItemService;


    @RequestMapping("showSign")
    @ResponseBody
    public List<SignItem> showSign(){
        return signItemService.showSignItem();
    }

}
