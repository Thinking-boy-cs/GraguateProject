package com.ysw.graduate_project.study_system.controller;

import com.ysw.graduate_project.study_system.entity.DataItem;
import com.ysw.graduate_project.study_system.entity.SignItem;
import com.ysw.graduate_project.study_system.entity.User;
import com.ysw.graduate_project.study_system.service.DataItemService;
import com.ysw.graduate_project.study_system.service.SignItemService;
import com.ysw.graduate_project.study_system.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import java.net.http.HttpRequest;
import java.util.Date;
import java.util.List;

/**
 * @author Yu shuaiwen
 * @date 2022/04/14 19:57
 */

/**
 * 打卡
 */

@Controller
@RequestMapping("sign")
@Slf4j
public class SignController {

    @Autowired
    private SignItemService signItemService;

    @Autowired
    private UserService userService;


    @RequestMapping("showSign")
    @ResponseBody
    public List<SignItem> showSign(){
        return signItemService.showSignItem();
    }

    @RequestMapping("showSignByTelNumber")
    @ResponseBody
    public List<SignItem> showSignByTelNumber(String telNumber){
        log.info("This is telNumber:{}",telNumber);
        return signItemService.showSignItemByTelNumber(telNumber);
    }

    @RequestMapping("showSignByName")
    @ResponseBody
    public List<SignItem> showSignByName(HttpServletRequest request){
        String nameSign = (String) request.getSession().getAttribute("nameSign");
        log.info("This is name:{}",nameSign);
        return signItemService.showSignItemByName(nameSign);
    }

    @RequestMapping("showSignByName_favor")
    public String showSignByName_favor(HttpServletRequest request){
        String nameSign = request.getParameter("nameSign");
        request.getSession().setAttribute("nameSign",nameSign);
        return "findSignByName";
    }

    @RequestMapping("showSignByTime")
    @ResponseBody
    public List<SignItem> showSignById(Date startTime, Date endTime){
        return signItemService.findSignByTime(startTime,endTime);
    }

    @RequestMapping("checkSign")
    public String checkSign(HttpServletRequest request){
        String temperature_sign = request.getParameter("temperature_sign");
        String location_sign = request.getParameter("location_sign");
        User thisUser = (User) request.getSession().getAttribute("thisUser");
        log.info("打卡记录：体温--{}",temperature_sign);
        log.info("打卡记录：地点--{}",location_sign);
        SignItem signItem = new SignItem();
        signItem.setLocation(location_sign);
        signItem.setTemperature(temperature_sign);
        signItem.setTelNumber(thisUser.getTelNumber());
        signItem.setName(thisUser.getName());
        signItem.setTime(new Date());
        signItemService.checkSign(signItem);
        return "signCalendar";
    }

    @RequestMapping("showSelf")
    @ResponseBody
    public List<SignItem> showSelf(String telNumber){
        return signItemService.showSelf(telNumber);
    }




}
