package com.ysw.graduate_project.study_system.service;

import com.ysw.graduate_project.study_system.dao.DataItemDao;
import com.ysw.graduate_project.study_system.entity.DataItem;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author Yu shuaiwen
 * @date 2022/04/10 22:41
 */

@Service
@Slf4j
public class DataItemServiceImpl implements DataItemService {

    @Resource
    private DataItemDao dataItemDao;

    @Override
    public List<DataItem> showDataItem() {
        return dataItemDao.showDataItem();
    }

    @Override
    public List<DataItem> showCollege() {
        return dataItemDao.showCollege();
    }

    @Override
    public List<DataItem> showSex() {
        return dataItemDao.showSex();
    }

    @Override
    public List<DataItem> showDegree() {
        return dataItemDao.showDegree();
    }

    @Override
    public List<DataItem> showSignYears() {
        return dataItemDao.showSignYears();
    }

    @Override
    public List<DataItem> showSignMonths(String year) {
        return dataItemDao.showSignMonths(year);
    }

    @Override
    public List<DataItem> showSignDays(String year, String month) {
        return dataItemDao.showSignDays(year,month);
    }

}
