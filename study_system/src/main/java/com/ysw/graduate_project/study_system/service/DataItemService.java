package com.ysw.graduate_project.study_system.service;

import com.ysw.graduate_project.study_system.entity.DataItem;

import java.util.List;

/**
 * @author Yu shuaiwen
 * @date 2022/04/10 22:42
 */
public interface DataItemService {
    List<DataItem> showDataItem();

    //1.统计各个学院的注册情况
    List<DataItem> showCollege();
}
