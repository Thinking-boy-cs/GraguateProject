package com.ysw.graduate_project.study_system.service;

import com.ysw.graduate_project.study_system.entity.Upload;

import java.util.List;

/**
 * @author Yu shuaiwen
 * @date 2022/4/28 14:36
 */
public interface RecommendService {

    void recommendAdd(Upload upload);

    void recommendUpdate(String telNumber,String name);

    void destroyRecommend(String telNumber);

    //1.基于类别的推荐
    List<Upload> recommendType(String telNumber);

    //2.基于次数的推荐
    List<Upload> recommendCount(String telNumber);

    //3.基于协同的推荐
    List<Upload> recommendXieTong(String sex,String degree,String college);

    //4.基于知识的推荐
    List<Upload> recommendZhiShi(String sex,String political,String college,String degree,String type);


    Integer totalCount(String telNumber);


    Integer manCount(String telNumber);
    Integer womanCount(String telNumber);

    Integer partyCount(String telNumber);
    Integer groupCount(String telNumber);
    Integer peopleCount(String telNumber);


    Integer uploadCount(String telNumber);


    Integer undergraduateCount(String telNumber);
    Integer postgraduateCount(String telNumber);
    Integer doctorCount(String telNumber);


    Integer scCollegeCount(String telNumber);
    Integer dkCollegeCount(String telNumber);
    Integer smCollegeCount(String telNumber);
    Integer dyCollegeCount(String telNumber);

    Integer artCount(String telNumber);
    Integer textCount(String telNumber);
    Integer techCount(String telNumber);
    Integer hisCount(String telNumber);
    Integer happyCount(String telNumber);




}
