package com.ysw.graduate_project.study_system.service;

import com.ysw.graduate_project.study_system.dao.ManagerDao;
import com.ysw.graduate_project.study_system.dao.RecommendDao;
import com.ysw.graduate_project.study_system.entity.Upload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author Yu shuaiwen
 * @date 2022/4/28 14:36
 */

@Service
@Transactional //事务管理：原子性
public class RecommendServiceImpl implements RecommendService{


    @Autowired
    private RecommendDao recommendDao;

    @Override
    public List<Upload> recommendCount(String telNumber) {
        return recommendDao.recommendCount(telNumber);
    }
}
