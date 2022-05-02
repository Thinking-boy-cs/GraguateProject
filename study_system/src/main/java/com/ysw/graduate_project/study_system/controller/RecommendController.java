package com.ysw.graduate_project.study_system.controller;

import com.ysw.graduate_project.study_system.entity.DataItem;
import com.ysw.graduate_project.study_system.entity.Upload;
import com.ysw.graduate_project.study_system.entity.User;
import com.ysw.graduate_project.study_system.service.InfoCastService;
import com.ysw.graduate_project.study_system.service.RecommendService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
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


    @Autowired
    private RecommendService recommendService;

    @RequestMapping("findCertainResource_t")
    @ResponseBody
    public List<Upload> findCertainResource_t(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.recommendType(telNumber);
    }


    @RequestMapping("findCertainResource_c")
    @ResponseBody
    public List<Upload> findCertainResource_c(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.recommendCount(telNumber);
    }


    @RequestMapping("findCertainResource_x")
    @ResponseBody
    public List<Upload> findCertainResource_x(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String sex = user.getSex();
        String degree = user.getDegree();
        String college = user.getCollege();
        return recommendService.recommendXieTong(sex,degree,college);
    }


    @RequestMapping("findCertainResource_z")
    @ResponseBody
    public List<Upload> findCertainResource_z(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.recommendZhiShi(telNumber);
    }


    /**
     * 精准画像部分
     */
    @RequestMapping("totalCount")
    public Integer totalCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.totalCount(telNumber);
    }




}
