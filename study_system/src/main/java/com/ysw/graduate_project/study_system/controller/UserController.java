package com.ysw.graduate_project.study_system.controller;

import com.ysw.graduate_project.study_system.entity.User;
import com.ysw.graduate_project.study_system.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
        return "index";
    }

    @RequestMapping("insert")
    public String insertUser(User user){
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

    @RequestMapping("findById")
    public String findById(Integer id,Model model){
        User user = userService.findById(id);
        model.addAttribute("findUser",user);
        return "updateUser";
    }

    @RequestMapping("findById2")
    @ResponseBody
    public User findById(Integer id){
        return userService.findById(id);
    }


}
