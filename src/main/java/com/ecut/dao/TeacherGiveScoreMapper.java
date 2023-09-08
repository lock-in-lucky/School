package com.ecut.dao;

import com.ecut.pojo.Student;

import java.util.List;

public interface TeacherGiveScoreMapper {
    List<Student> getStudentsByTeacherId(String teacherId);
}
