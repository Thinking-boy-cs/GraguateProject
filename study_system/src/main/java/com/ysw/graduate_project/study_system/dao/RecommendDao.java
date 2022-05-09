package com.ysw.graduate_project.study_system.dao;

import com.ysw.graduate_project.study_system.entity.Upload;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @author Yu shuaiwen
 * @date 2022/4/28 14:34
 */

@Mapper
public interface RecommendDao {

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



    /**
     * 精准画像部分
     */
    Integer totalCount(String telNumber);

    //性别
    Integer manCount(String telNumber);
    Integer womanCount(String telNumber);

    //政治面貌
    Integer partyCount(String telNumber);
    Integer groupCount(String telNumber);
    Integer peopleCount(String telNumber);

    //下载的资料总数
    Integer uploadCount(String telNumber);

    //学历
    Integer undergraduateCount(String telNumber);
    Integer postgraduateCount(String telNumber);
    Integer doctorCount(String telNumber);

    //学院
    Integer scCollegeCount(String telNumber);
    Integer dkCollegeCount(String telNumber);
    Integer smCollegeCount(String telNumber);
    Integer dyCollegeCount(String telNumber);

    //资料类型
    Integer artCount(String telNumber);
    Integer textCount(String telNumber);
    Integer techCount(String telNumber);
    Integer hisCount(String telNumber);
    Integer happyCount(String telNumber);




}
