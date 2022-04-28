package com.ysw.graduate_project.study_system.service;

import com.ysw.graduate_project.study_system.entity.Upload;

import java.util.List;

/**
 * @author Yu shuaiwen
 * @date 2022/04/24 9:05
 */
public interface uploadService {

    List<Upload> findAll();

    void uploadAdd(Upload upload);

    Upload findUploadByName(String name);

    void uploadUpdate(String name);

}
