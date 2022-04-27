package com.ysw.graduate_project.study_system.entity;

import lombok.Data;

import java.sql.Date;


/**
 * @author Yu shuaiwen
 * @date 2022/04/14 19:59
 */

@Data
public class SignItem {

    private Integer id;
    private String telNumber;
    private String name;
    private Double temperature;
    private String location;
    private Date time;

}
