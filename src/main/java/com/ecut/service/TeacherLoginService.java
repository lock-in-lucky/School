package com.ecut.service;

import com.ecut.pojo.Teacher;
import com.ecut.pojo.TeacherLogin;

public interface TeacherLoginService {
    boolean existsTeacher(TeacherLogin teacherLogin);
    Teacher getTeacherByLogin(TeacherLogin teacherLogin);
}
