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

    //1.基于统计的推荐
    List<Upload> recommendCount(String telNumber);

}
