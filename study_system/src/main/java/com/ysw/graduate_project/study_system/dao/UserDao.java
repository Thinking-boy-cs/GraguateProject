package com.ysw.graduate_project.study_system.dao;

import com.ysw.graduate_project.study_system.entity.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @author Yu shuaiwen
 * @date 2022/04/06 20:19
 */

@Mapper
public interface UserDao {

    List<User> findAll();

    void insertUser(User user);

    void deleteUser(Integer id);

    void updateUser(User user);

    User findById(Integer id);

}
