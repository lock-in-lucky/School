package com.ecut.service;

import com.ecut.pojo.Student;
import com.ecut.pojo.StudentLogin;

public interface StudentLoginService {
    /**
     * 判断是否存在学生
     * @param studentLogin
     * @return
     */
    boolean existsStudent(StudentLogin studentLogin);

    /**
     * 根据学号和密码返回一个学生对象
     * @param studentLogin
     * @return
     */
    Student getStudent(StudentLogin studentLogin);
}
