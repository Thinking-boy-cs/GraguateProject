package com.ysw.graduate_project.study_system.service;

import com.ysw.graduate_project.study_system.dao.DataItemDao;
import com.ysw.graduate_project.study_system.dao.InfoCastDao;
import com.ysw.graduate_project.study_system.entity.infocast;
import org.springframework.stereotype.Service;
import org.w3c.dom.html.HTMLImageElement;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * @author Yu shuaiwen
 * @date 2022/04/23 16:14
 */

@Service
public class InfoCastServiceImpl implements InfoCastService{

    @Resource
    private InfoCastDao infoCastDao;


    @Override
    public List<infocast> infoList() {
        return infoCastDao.infoList();

    }

    @Override
    public void infoAdd(infocast infocast) {

        infocast.setTime(new Date());
        infoCastDao.infoAdd(infocast);
    }

    @Override
    public void infoDelete(int id) {
        infoCastDao.infoDelete(id);
    }

    @Override
    public infocast infoFindById(int id) {
        return infoCastDao.infoFindById(id);
    }
}
