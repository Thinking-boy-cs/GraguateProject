package com.ysw.graduate_project.study_system.dao;

import com.ysw.graduate_project.study_system.entity.infocast;
import org.apache.ibatis.annotations.Mapper;

import java.util.*;

/**
 * @author Yu shuaiwen
 * @date 2022/04/23 16:11
 */

@Mapper
public interface InfoCastDao {

    //1.展示公告
    List<infocast> infoList();

    //2.添加公告
    void infoAdd(infocast infocast);

    //3.删除公告
    void infoDelete(int id);

    //4.查看公告
    infocast infoFindById(int id);
}
