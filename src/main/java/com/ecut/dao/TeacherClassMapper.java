package com.ecut.dao;

import com.ecut.pojo.Classes;
import com.ecut.pojo.Student;

import java.util.List;

public interface TeacherClassMapper {
    /**
     * 通过教师id获取学生
     * @return
     */
    List<Student> getStudentsByTeacherId(String teacherId);

    /**
     * 根据班主任教师id获取班级
     * @param teacherId
     * @return
     */
    Classes getClasses(String teacherId);
}
