package com.ysw.graduate_project.study_system.service;

import com.ysw.graduate_project.study_system.entity.Upload;

import java.util.List;

/**
 * @author Yu shuaiwen
 * @date 2022/4/28 14:36
 */
public interface RecommendService {

    void recommendUpdate(String name);

    //1.基于统计的推荐
    List<Upload> recommendCount(String telNumber);

}
