package com.ecut.service;

import com.ecut.pojo.Classes;
import com.ecut.pojo.Student;

import java.util.List;

public interface TeacherClassService {
    /**
     * 根据班主任Id查找所带的班级学生
     * @param teacherId
     * @return
     */
    List<Student> getStudents(String teacherId);

    /**
     * 根据班主任教师id获取班级
     * @param teacherId
     * @return
     */
    Classes getClasses(String teacherId);
}
