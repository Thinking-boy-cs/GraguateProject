package com.ysw.graduate_project.study_system.controller;

import com.ysw.graduate_project.study_system.entity.User;
import com.ysw.graduate_project.study_system.entity.infocast;
import com.ysw.graduate_project.study_system.service.InfoCastService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author Yu shuaiwen
 * @date 2022/04/23 16:07
 */


@Controller
@Slf4j
@RequestMapping("infoCast")
public class InfoCastController {

    @Autowired
    private InfoCastService infoCastService;

    @RequestMapping("list")
    public String f(Model model){
        //三种方法请求作用域
        //HttpServletRequest request, Model model, ModelAndView modelAndView
        List<infocast> infoList = infoCastService.infoList();
        model.addAttribute("infoList",infoList);
        return "infoList"; //return "redirect:/findAll
    }

    @RequestMapping("findInfoAll")
    @ResponseBody
    public List<infocast> findInfoAll(){
        return infoCastService.infoList();
    }


    @RequestMapping("add")
    public String infoAdd(infocast infocast, HttpServletRequest  request){
        //有点问题：要设置当前用户的用户名
        String name = "Yu";
        infocast.setName(name);
        infoCastService.infoAdd(infocast);
//        User thisUser = (User) request.getSession().getAttribute("thisUser");
//        infocast.setName(thisUser.getTelNumber());

        return "redirect:/infoCast/list";
    }

    @RequestMapping("delete")
    public String deleteInfo(int id){
        infoCastService.infoDelete(id);
        return "redirect:/infoCast/list";
    }


    //有点问题：没有跳转到具体的id那一项*****************************************
    @RequestMapping("info_find")
    public String ff(int id,Model model){
        //三种方法请求作用域
        //HttpServletRequest request, Model model, ModelAndView modelAndView
        infocast theInfo = infoCastService.infoFindById(id);
        model.addAttribute("theInfo",theInfo);
        log.info(infoCastService.infoFindById(id).getTitle());
        return "infoFindById"; //return "redirect:/findAll
    }


    @RequestMapping("find")
    public infocast findInfo(int id){
        log.info(infoCastService.infoFindById(id).getTitle());
        return infoCastService.infoFindById(id);
    }

}
