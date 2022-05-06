package com.ysw.graduate_project.study_system.service;

import com.ysw.graduate_project.study_system.entity.Comment;
import com.ysw.graduate_project.study_system.entity.Question;
import com.ysw.graduate_project.study_system.entity.infocast;

import java.util.List;

/**
 * @author Yu shuaiwen
 * @date 2022/5/5 17:07
 */
public interface CommunityService {

    //1.展示讨论问题
    List<Question> findAll();

    //2.添加讨论问题
    void questionAdd(Question question);

    //3.删除讨论问题
    void questionDelete(int id);

    //4.查看讨论问题
    Question questionFindById(int id);

    //5.对应问题的评论
    List<Comment> showComment(int id);

    //6.添加评论
    void commentAdd(Comment comment);
}
