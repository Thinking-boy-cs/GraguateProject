package com.ysw.graduate_project.study_system.service;

import com.ysw.graduate_project.study_system.entity.SignItem;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

/**
 * @author Yu shuaiwen
 * @date 2022/04/14 20:07
 */
public interface SignItemService {

    //1.搜索全部打卡记录
    List<SignItem> showSignItem();

    //2.搜索某天打卡记录
    List<SignItem> findSignByTime(Date startTime,Date endTime);

    //3.搜索某人打卡记录
    List<SignItem> showSignItemByTelNumber(String telNumber);

    //4.搜索某人打卡记录（按姓名）
    List<SignItem> showSignItemByName(String name);

    //5.打卡
    void checkSign(SignItem signItem);

    //6.查看自己的打卡记录
    List<SignItem> showSelf(String telNumber);
}
