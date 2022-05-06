package com.ysw.graduate_project.study_system.service;

import com.ysw.graduate_project.study_system.dao.DataItemDao;
import com.ysw.graduate_project.study_system.dao.SignItemDao;
import com.ysw.graduate_project.study_system.entity.SignItem;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * @author Yu shuaiwen
 * @date 2022/04/14 20:07
 */

@Service
@Slf4j
public class SignItemServiceImpl implements SignItemService{

    @Resource
    private SignItemDao signItemDao;

    @Override
    public List<SignItem> showSignItem() {
        return signItemDao.showSignItem();
    }

    @Override
    public List<SignItem> findSignByTime(Date startTime, Date endTime) {
        return signItemDao.findSignByTime(startTime,endTime);
    }

    @Override
    public List<SignItem> showSignItemByTelNumber(String telNumber) {
        return signItemDao.showSignItemByTelNumber(telNumber);
    }

    @Override
    public List<SignItem> showSignItemByName(String name) {
        return signItemDao.showSignItemByName(name);
    }

    @Override
    public void checkSign(SignItem signItem) {
        signItemDao.checkSign(signItem);
    }

    @Override
    public List<SignItem> showSelf(String telNumber) {
        return signItemDao.showSelf(telNumber);
    }

    @Override
    public void destroySign(String telNumber) {
        signItemDao.destroySign(telNumber);
    }

}
