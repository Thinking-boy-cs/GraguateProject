package com.ysw.graduate_project.study_system.service;

import com.ysw.graduate_project.study_system.dao.DataItemDao;
import com.ysw.graduate_project.study_system.dao.SignItemDao;
import com.ysw.graduate_project.study_system.entity.SignItem;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
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
    public List<SignItem> showSignItemByTelNumber(String telNumber) {
        return signItemDao.showSignItemByTelNumber(telNumber);
    }
}
