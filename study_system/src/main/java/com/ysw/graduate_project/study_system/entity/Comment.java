package com.ysw.graduate_project.study_system.entity;

import lombok.Data;

import java.util.Date;

/**
 * @author Yu shuaiwen
 * @date 2022/5/6 11:14
 */

@Data
public class Comment {

    Integer id;
    String telNumber;
    String name;
    String questionInfo;
    String commentInfo;
    Date time;

}
