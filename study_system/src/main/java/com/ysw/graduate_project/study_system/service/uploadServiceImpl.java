package com.ysw.graduate_project.study_system.service;

import com.ysw.graduate_project.study_system.dao.UploadDao;
import com.ysw.graduate_project.study_system.entity.Upload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Yu shuaiwen
 * @date 2022/04/24 9:05
 */

@Service
public class uploadServiceImpl implements uploadService{

    @Autowired
    private UploadDao uploadDao;


    @Override
    public List<Upload> findAll() {
        return uploadDao.findAll();
    }

    @Override
    public List<Upload> showFileItemByType(String type) {
        return uploadDao.showFileItemByType(type);
    }

    @Override
    public void uploadAdd(Upload upload) {
        uploadDao.uploadAdd(upload);
    }

    @Override
    public Upload findUploadByTelNumber(String telNumber) {
        return uploadDao.findUploadByTelNumber(telNumber);
    }

    @Override
    public void uploadUpdate(String name) {
        uploadDao.uploadUpdate(name);
    }

    @Override
    public void destroyUpload(String telNumber) {
        uploadDao.destroyUpload(telNumber);
    }
}
