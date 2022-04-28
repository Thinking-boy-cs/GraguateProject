package com.ysw.graduate_project.study_system.entity;

import lombok.Data;

import java.util.Date;

/**
 * @author Yu shuaiwen
 * @date 2022/04/24 9:04
 */
@Data
public class Upload {

    int id;
    String name;
    String telNumber;
    String type;
    Date time;
    int count;

}
