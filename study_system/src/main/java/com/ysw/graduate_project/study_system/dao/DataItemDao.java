package com.ysw.graduate_project.study_system.dao;

import com.ysw.graduate_project.study_system.entity.DataItem;
import org.apache.ibatis.annotations.Mapper;

import java.util.*;

/**
 * @author Yu shuaiwen
 * @date 2022/04/10 22:40
 */

@Mapper
public interface DataItemDao {
    List<DataItem> showDataItem();
}
