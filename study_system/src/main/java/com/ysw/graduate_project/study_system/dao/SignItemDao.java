package com.ysw.graduate_project.study_system.dao;

import com.ysw.graduate_project.study_system.entity.SignItem;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.*;

/**
 * @author Yu shuaiwen
 * @date 2022/04/14 19:58
 */

@Mapper
public interface SignItemDao {

    //1.搜索全部打卡记录
    List<SignItem> showSignItem();

    //2.搜索某天打卡记录
    List<SignItem> findSignByTime(@Param("startTime") Date startTime, @Param("endTime") Date endTime);


    //3.搜索某人打卡记录（按电话）
    List<SignItem> showSignItemByTelNumber(String telNumber);

    //4.搜索某人打卡记录（按姓名）
    List<SignItem> showSignItemByName(String name);


}
