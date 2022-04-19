package com.ysw.graduate_project.study_system.service;

import com.ysw.graduate_project.study_system.dao.ManagerDao;
import com.ysw.graduate_project.study_system.dao.UserDao;
import com.ysw.graduate_project.study_system.entity.Manager;
import com.ysw.graduate_project.study_system.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author Yu shuaiwen
 * @date 2022/04/06 20:22
 */


@Service
@Transactional //事务管理：原子性
public class ManagerServiceImpl implements ManagerService{

    @Autowired
    private ManagerDao managerDao;


    @Override
    public List<Manager> findAll(){
        return managerDao.findAll();
    }

    @Override
    public void insertManager(Manager manager) {
        managerDao.insertUser(manager);
    }

    @Override
    public void delete(Integer id) {
        managerDao.deleteUser(id);
    }

    @Override
    public void updateManager(Manager manager) {
        managerDao.updateManager(manager);
    }

    @Override
    public Manager findById(Integer id) {
        return managerDao.findById(id);
    }

    @Override
    public Manager findByTelNumber(String telNumber) {
        return managerDao.findByTelNumber(telNumber);
    }
}
