package com.ecut.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CourseScore {
    private String courseId;
    private String courseName;
    private Integer courseTerm;
    private String courseTeacher;
    private Integer score;
}
