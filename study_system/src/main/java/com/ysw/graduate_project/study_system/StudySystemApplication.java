package com.ysw.graduate_project.study_system;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.ysw.graduate_project.study_system.dao")
public class StudySystemApplication {

    public static void main(String[] args) {
        SpringApplication.run(StudySystemApplication.class, args);
    }

}
