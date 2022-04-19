package com.ysw.graduate_project.study_system.service;

import com.ysw.graduate_project.study_system.entity.Manager;
import com.ysw.graduate_project.study_system.entity.User;

import java.util.List;

/**
 * @author Yu shuaiwen
 * @date 2022/04/06 20:22
 */
public interface ManagerService {

    List<Manager> findAll();

    void insertManager(Manager manager);

    void delete(Integer id);

    void updateManager(Manager manager);

    Manager findById(Integer id);

    Manager findByTelNumber(String telNumber);

}

