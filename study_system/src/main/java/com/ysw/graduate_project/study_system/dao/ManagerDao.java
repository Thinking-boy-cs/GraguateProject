package com.ysw.graduate_project.study_system.dao;

import com.ysw.graduate_project.study_system.entity.Manager;
import com.ysw.graduate_project.study_system.entity.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @author Yu shuaiwen
 * @date 2022/04/06 20:19
 */

@Mapper
public interface ManagerDao {

    List<Manager> findAll();

    void insertManager(Manager manager);

    void deleteManager(Integer id);

    void updateManager(Manager manager);

    Manager findById(Integer id);

    Manager findByTelNumber(String telNumber);

}
