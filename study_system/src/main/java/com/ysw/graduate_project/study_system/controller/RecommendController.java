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

    @RequestMapping("manCount")
    public Integer manCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.manCount(telNumber);
    }

    @RequestMapping("womanCount")
    public Integer womanCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.womanCount(telNumber);
    }

    @RequestMapping("partyCount")
    public Integer partyCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.partyCount(telNumber);
    }

    @RequestMapping("groupCount")
    public Integer groupCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.groupCount(telNumber);
    }

    @RequestMapping("peopleCount")
    public Integer peopleCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.peopleCount(telNumber);
    }

    @RequestMapping("uploadCount")
    public Integer uploadCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.uploadCount(telNumber);
    }


    @RequestMapping("undergraduateCount")
    public Integer undergraduateCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.undergraduateCount(telNumber);
    }

    @RequestMapping("postgraduateCount")
    public Integer postgraduateCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.postgraduateCount(telNumber);
    }

    @RequestMapping("doctorCount")
    public Integer doctorCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.doctorCount(telNumber);
    }


    @RequestMapping("scCollegeCount")
    public Integer scCollegeCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.scCollegeCount(telNumber);
    }

    @RequestMapping("dkCollegeCount")
    public Integer dkCollegeCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.dkCollegeCount(telNumber);
    }

    @RequestMapping("smCollegeCount")
    public Integer smCollegeCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.smCollegeCount(telNumber);
    }

    @RequestMapping("dyCollegeCount")
    public Integer dyCollegeCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.dyCollegeCount(telNumber);
    }

    @RequestMapping("artCount")
    public Integer artCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.artCount(telNumber);
    }

    @RequestMapping("textCount")
    public Integer textCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.textCount(telNumber);
    }

    @RequestMapping("techCount")
    public Integer techCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.techCount(telNumber);
    }

    @RequestMapping("hisCount")
    public Integer hisCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.hisCount(telNumber);
    }

    @RequestMapping("happyCount")
    public Integer happyCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.happyCount(telNumber);
    }



}
