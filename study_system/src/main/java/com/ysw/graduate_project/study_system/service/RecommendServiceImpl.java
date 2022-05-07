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
    public void recommendUpdate(String telNumber,String name) {
        recommendDao.recommendUpdate(telNumber,name);
    }

    @Override
    public void destroyRecommend(String telNumber) {
        recommendDao.destroyRecommend(telNumber);
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
    public List<Upload> recommendZhiShi(String sex, String political, String college, String degree, String type) {
        return recommendDao.recommendZhiShi(sex,political,college,degree,type);
    }

    @Override
    public Integer totalCount(String telNumber) {
        return recommendDao.totalCount(telNumber);
    }

    @Override
    public Integer manCount(String telNumber) {
        return recommendDao.manCount(telNumber);
    }

    @Override
    public Integer womanCount(String telNumber) {
        return recommendDao.womanCount(telNumber);
    }

    @Override
    public Integer partyCount(String telNumber) {
        return recommendDao.partyCount(telNumber);
    }

    @Override
    public Integer groupCount(String telNumber) {
        return recommendDao.groupCount(telNumber);
    }

    @Override
    public Integer peopleCount(String telNumber) {
        return recommendDao.peopleCount(telNumber);
    }

    @Override
    public Integer uploadCount(String telNumber) {
        return recommendDao.uploadCount(telNumber);
    }

    @Override
    public Integer undergraduateCount(String telNumber) {
        return recommendDao.undergraduateCount(telNumber);
    }

    @Override
    public Integer postgraduateCount(String telNumber) {
        return recommendDao.postgraduateCount(telNumber);
    }

    @Override
    public Integer doctorCount(String telNumber) {
        return recommendDao.doctorCount(telNumber);
    }

    @Override
    public Integer scCollegeCount(String telNumber) {
        return recommendDao.scCollegeCount(telNumber);
    }

    @Override
    public Integer dkCollegeCount(String telNumber) {
        return recommendDao.dkCollegeCount(telNumber);
    }

    @Override
    public Integer smCollegeCount(String telNumber) {
        return recommendDao.smCollegeCount(telNumber);
    }

    @Override
    public Integer dyCollegeCount(String telNumber) {
        return recommendDao.dyCollegeCount(telNumber);
    }

    @Override
    public Integer artCount(String telNumber) {
        return recommendDao.artCount(telNumber);
    }

    @Override
    public Integer textCount(String telNumber) {
        return recommendDao.textCount(telNumber);
    }

    @Override
    public Integer techCount(String telNumber) {
        return recommendDao.techCount(telNumber);
    }

    @Override
    public Integer hisCount(String telNumber) {
        return recommendDao.hisCount(telNumber);
    }

    @Override
    public Integer happyCount(String telNumber) {
        return recommendDao.happyCount(telNumber);
    }

}
