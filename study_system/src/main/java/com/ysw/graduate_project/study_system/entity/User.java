package com.ysw.graduate_project.study_system.entity;

import lombok.Data;

/**
 * @author Yu shuaiwen
 * @date 2022/04/06 20:20
 */

@Data
public class User {

    private Integer id;
    private String telNumber;
    private String passWord;
    private String mail;

}
