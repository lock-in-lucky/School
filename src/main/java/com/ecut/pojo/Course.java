package com.ecut.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Course {
    private String courseId;
    private String courseName;
    private String courseTeacher;
    private Integer courseTerm;
    private Integer courseStatus;
    private List<Student> students;
    private List<Teacher> teachers;
    private int flag;
}
