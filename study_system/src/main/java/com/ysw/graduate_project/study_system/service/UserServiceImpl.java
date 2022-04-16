package com.ysw.graduate_project.study_system.service;

import com.ysw.graduate_project.study_system.dao.UserDao;
import com.ysw.graduate_project.study_system.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author Yu shuaiwen
 * @date 2022/04/06 20:20
 */


@Service
@Transactional //事务管理：原子性
public class UserServiceImpl implements UserService{

    @Autowired
    private UserDao userDao;


    @Override
    public List<User> findAll(){
        return userDao.findAll();
    }

    @Override
    public void insertUser(User user) {
        userDao.insertUser(user);
    }

    @Override
    public void delete(Integer id) {
        userDao.deleteUser(id);
    }

    @Override
    public void updateUser(User user) {
        userDao.updateUser(user);
    }

    @Override
    public User findById(Integer id) {
        return userDao.findById(id);
    }

    @Override
    public User findByTelNumber(String telNumber) {
        return userDao.findByTelNumber(telNumber);
    }
}
