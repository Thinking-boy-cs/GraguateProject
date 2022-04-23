package com.ysw.graduate_project.study_system.service;

import com.ysw.graduate_project.study_system.entity.infocast;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Yu shuaiwen
 * @date 2022/04/23 16:14
 */


public interface InfoCastService {

    //1.展示公告
    List<infocast> infoList();

    //2.添加公告
    void infoAdd(infocast infocast);

    //3.删除公告
    void infoDelete(int id);

    //4.查看公安共
    infocast infoFindById(int id);

}
