package com.ysw.graduate_project.study_system.controller;

import com.ysw.graduate_project.study_system.entity.Upload;
import com.ysw.graduate_project.study_system.entity.User;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author Yu shuaiwen
 * @date 2022/4/28 14:15
 */

@RestController
@Slf4j
@RequestMapping("recommend")
public class RecommendController {

//    @RequestMapping("findCertainResource")
//    @ResponseBody
//    public List<Upload> findCertainResource(HttpServletRequest request){
//        User user = (User) request.getSession().getAttribute("thisUser");
//        user.getName()
//        return ;
//    }

}
