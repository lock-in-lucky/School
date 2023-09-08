package com.ecut.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Classes {
    private String classId;
    private String className;
    private String classTeacherId;
    private String classTeacherName;
    private List<Student> studentList;
}
