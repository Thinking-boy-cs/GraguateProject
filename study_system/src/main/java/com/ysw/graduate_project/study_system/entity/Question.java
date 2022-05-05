package com.ysw.graduate_project.study_system.entity;

import lombok.Data;

import java.util.Date;

/**
 * @author Yu shuaiwen
 * @date 2022/5/5 17:05
 */


@Data
public class Question {

    Integer id;
    String telNumber;
    String name;
    String questionInfo;
    Date time;

}
