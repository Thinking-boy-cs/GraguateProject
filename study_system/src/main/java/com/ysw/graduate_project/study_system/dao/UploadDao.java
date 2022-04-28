package com.ysw.graduate_project.study_system.dao;

import com.ysw.graduate_project.study_system.entity.Upload;
import org.apache.ibatis.annotations.Mapper;

import java.util.*;

/**
 * @author Yu shuaiwen
 * @date 2022/04/24 9:03
 */

@Mapper
public interface UploadDao {

    List<Upload> findAll();

    void uploadAdd(Upload upload);

    Upload findUploadByTelNumber(String telNumber);

    void uploadUpdate(String name);

}
