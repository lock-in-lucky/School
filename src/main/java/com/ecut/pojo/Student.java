package com.ecut.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Student {
    private String studentId;
    private String studentName;
    private String studentGender;
    private String studentPassword;
    private String studentPhone;
    private String studentClassId;
    private String studentEmail;
    private String studentAddress;
    private final Integer studentPower=3;
    private List<Course> courses;

}
