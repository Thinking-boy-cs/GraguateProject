package com.ysw.graduate_project.study_system.controller;

import com.ysw.graduate_project.study_system.entity.Manager;
import com.ysw.graduate_project.study_system.entity.User;
import com.ysw.graduate_project.study_system.service.ManagerService;
import com.ysw.graduate_project.study_system.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author Yu shuaiwen
 * @date 2022/04/06 20:18
 */

@Controller
@RequestMapping("user")
@Slf4j
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private ManagerService managerService;


    @RequestMapping("find")
    public String findAll(Model model){
        //三种方法请求作用域
        //HttpServletRequest request, Model model, ModelAndView modelAndView
        List<User> userList = userService.findAll();
        model.addAttribute("userList",userList);
        return "findAll"; //return "redirect:/findAll
    }

    @RequestMapping("findUserAll")
    @ResponseBody
    public List<User> findUserAll(){
        return userService.findAll();
    }

    @RequestMapping("test")
    public String test(){
        return "index"; //跳转到以"index"为名的jsp了
    }

    @RequestMapping("insert")
    public String insertUser(HttpServletRequest request){
        User user = new User();
        String telNumber = request.getParameter("telNumber");
        String passWord = request.getParameter("passWord");
        String name = request.getParameter("name");
        String idCard = request.getParameter("idCard");
        String political = request.getParameter("political");
        String college = request.getParameter("college");
        String degree = request.getParameter("degree");
        user.setTelNumber(telNumber);
        user.setPassWord(passWord);
        user.setName(name);
        user.setIdCard(idCard);
        user.setPolitical(political);
        user.setCollege(college);
        user.setDegree(degree);
        log.info("insert this user:[{}]",user.getTelNumber());
        userService.insertUser(user);
        return "redirect:/user/find";
    }

    @RequestMapping("delete")
    public String deleteUser(int id){
        userService.delete(id);
        return "redirect:/user/find";
    }

    @RequestMapping("updateUser")
    public String updateUser(User user){
        userService.updateUser(user);
        return "redirect:/user/find";
    }

    @RequestMapping("updateUser_m")
    public String updateUser_m(User user){
        userService.updateUser_m(user);
        return "redirect:/user/find";
    }


    @RequestMapping("findById")
    public String findById(Integer id,Model model){
        User user = userService.findById(id);
        model.addAttribute("findUser",user);
        return "updateUser_m";
    }

    @RequestMapping("findById2")
    @ResponseBody
    public User findById(Integer id){
        return userService.findById(id);
    }

    //大学生登录
    @RequestMapping("login")
    public String login(HttpServletRequest request){
        log.info("I am Here!!!");
//        user.setId(1);
//        user.setMail("1");
//        user.setPassWord("123456");
//        user.setTelNumber("18390071892");
        String userTelNumber = request.getParameter("telNumber");
        String userPassWord = request.getParameter("passWord");

        if(userService.findByTelNumber(userTelNumber)==null){
            return "No";
        }

        log.info("This is the thisUser telNumber:[{}]",userTelNumber);
        log.info("This is the thisUser passWord:[{}]",userPassWord);

        User thisUser = userService.findByTelNumber(userTelNumber);

        if(thisUser.getPassWord().equals(userPassWord)){
            log.info(thisUser.getPassWord());
            request.getSession().setAttribute("thisUser", thisUser);
            log.info(thisUser.getTelNumber());
            return "backSystem";
        }else{
            return "No";
        }
    }

    //核心管理员登录
    @RequestMapping("login2")
    public String login2(HttpServletRequest request){
        log.info("I am Here!!!");
//        manager.setId(1);
//        manager.setMail("1");
//        manager.setPassWord("123456");
//        manager.setTelNumber("15340416216");
        String managerTelNumber = request.getParameter("telNumber");
        String managerPassWord = request.getParameter("passWord");

        if(managerService.findByTelNumber(managerTelNumber)==null){
            return "No";
        }
        log.info("This is the thisManager telNumber:[{}]",managerTelNumber);
        log.info("This is the thisManager passWord:[{}]",managerPassWord);
        Manager thisManager = managerService.findByTelNumber(managerTelNumber);
        if(thisManager.getPassWord().equals(managerPassWord)){
            log.info(thisManager.getPassWord());
            request.getSession().setAttribute("thisManager", thisManager);
            log.info(thisManager.getTelNumber());
            return "backSystem_m";
        }else{
            return "No";
        }
    }

    //

}
