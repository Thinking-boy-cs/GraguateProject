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

    void recommendUpdate(String name);

    //1.基于类别的推荐
    List<Upload> recommendType(String telNumber);

    //2.基于次数的推荐
    List<Upload> recommendCount(String telNumber);

    //3.基于协同的推荐
    List<Upload> recommendXieTong(String sex,String degree,String college);

    //4.基于知识的推荐
    List<Upload> recommendZhiShi(String telNumber);

}
