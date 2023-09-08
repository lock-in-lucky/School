package com.ecut.dao;

import com.ecut.pojo.Teacher;
import com.ecut.pojo.TeacherLogin;

public interface TeacherLoginMapper {
    /**
     * 登录验证是否存在老师
     * @param teacherLogin
     * @return
     */
    Teacher existsTeacher(TeacherLogin teacherLogin);
}
