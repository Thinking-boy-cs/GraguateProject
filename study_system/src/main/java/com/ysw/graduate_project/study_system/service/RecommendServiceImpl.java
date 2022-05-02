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
    public void recommendAdd(Upload upload) {
        recommendDao.recommendAdd(upload);
    }

    @Override
    public void recommendUpdate(String name) {
        recommendDao.recommendUpdate(name);
    }

    @Override
    public List<Upload> recommendType(String telNumber) {
        return recommendDao.recommendType(telNumber);
    }

    @Override
    public List<Upload> recommendCount(String telNumber) {
        return recommendDao.recommendCount(telNumber);
    }

    @Override
    public List<Upload> recommendXieTong(String sex,String degree,String college) {
        return recommendDao.recommendXieTong(sex,degree,college);
    }

    @Override
    public List<Upload> recommendZhiShi(String telNumber) {
        return recommendDao.recommendZhiShi(telNumber);
    }

    @Override
    public Integer totalCount(String telNumber) {
        return recommendDao.totalCount(telNumber);
    }

}
