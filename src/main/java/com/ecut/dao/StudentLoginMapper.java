package com.ecut.dao;

import com.ecut.pojo.Admin;
import com.ecut.pojo.Student;
import com.ecut.pojo.StudentLogin;

public interface StudentLoginMapper {

    /**
     * 判断是否存在学生
     * @return
     */
    Student existsStudent(StudentLogin studentLogin);
}
