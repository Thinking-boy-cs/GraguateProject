package com.ysw.graduate_project.study_system.service;

import com.ysw.graduate_project.study_system.entity.User;

import java.util.List;

/**
 * @author Yu shuaiwen
 * @date 2022/04/06 20:20
 */
public interface UserService {

    List<User> findAll();

    void insertUser(User user);

    void delete(Integer id);

    void updateUser(User user);

    void updateUser_m(User user);

    User findById(Integer id);

    User findByTelNumber(String telNumber);

}

