package com.ysw.graduate_project.study_system.service;

import com.ysw.graduate_project.study_system.dao.CommunityDao;
import com.ysw.graduate_project.study_system.dao.DataItemDao;
import com.ysw.graduate_project.study_system.entity.Comment;
import com.ysw.graduate_project.study_system.entity.Question;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author Yu shuaiwen
 * @date 2022/5/5 17:07
 */

@Service
@Slf4j
public class CommunityServiceImpl implements CommunityService{

    @Resource
    private CommunityDao communityDao;

    @Override
    public List<Question> findAll() {
        return communityDao.findAll();
    }

    @Override
    public void questionAdd(Question question) {
        communityDao.questionAdd(question);
    }

    @Override
    public void questionDelete(int id) {
        communityDao.questionDelete(id);
    }

    @Override
    public Question questionFindById(int id) {
        return communityDao.questionFindById(id);
    }

    @Override
    public List<Comment> showComment(int id) {
        return communityDao.showComment(id);
    }

    @Override
    public void commentAdd(Comment comment) {
        communityDao.commentAdd(comment);
    }
}
