package com.ecut.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Lecture {
    private Integer id;
    private String lectureUnit;
    private String lectureTheme;
    private Date lectureTime;
    private String lectureAddress;
    private String lectureContent;
}
