package com.ysw.graduate_project.study_system.controller;

import com.ysw.graduate_project.study_system.entity.Manager;
import com.ysw.graduate_project.study_system.entity.Question;
import com.ysw.graduate_project.study_system.entity.User;
import com.ysw.graduate_project.study_system.entity.infocast;
import com.ysw.graduate_project.study_system.service.CommunityService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

/**
 * @author Yu shuaiwen
 * @date 2022/5/5 17:03
 */

@Controller
@RequestMapping("community")
@Slf4j
public class CommunityController {

    @Autowired
    private CommunityService communityService;

    @RequestMapping("findAll")
    @ResponseBody
    public List<Question> findAll(){
        return communityService.findAll();
    }

    @RequestMapping("findById")
    @ResponseBody
    public Question findById(int id){
        log.info(communityService.questionFindById(id).getQuestionInfo());
        return communityService.questionFindById(id);
    }

    @RequestMapping("questionDelete")
    public String deleteInfo(int id){
        communityService.questionDelete(id);
        return "redirect:/community/findAll";
    }

    @RequestMapping("questionAdd_m")
    public String questionAdd_m(Question question, HttpServletRequest request){

        Manager manager = (Manager) request.getSession().getAttribute("thisManager");
        String telNumber = manager.getTelNumber();
        String name = manager.getName();
        question.setTelNumber(telNumber);
        question.setName(name);
        question.setTime(new Date());
        communityService.questionAdd(question);
//        User thisUser = (User) request.getSession().getAttribute("thisUser");
//        infocast.setName(thisUser.getTelNumber());

        return "redirect:/community/findAll";
    }

    @RequestMapping("questionAdd_u")
    public String questionAdd_u(Question question, HttpServletRequest request){

        User thisUser = (User) request.getSession().getAttribute("thisUser");
        String telNumber = thisUser.getTelNumber();
        String name = thisUser.getName();
        question.setTelNumber(telNumber);
        question.setName(name);
        question.setTime(new Date());
        communityService.questionAdd(question);
        return "redirect:/community/findAll";
    }
}
