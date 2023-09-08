package com.ecut.service.impl;

import com.ecut.dao.TeacherLoginMapper;
import com.ecut.pojo.Teacher;
import com.ecut.pojo.TeacherLogin;
import com.ecut.service.TeacherLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TeacherLoginServiceImpl implements TeacherLoginService {
    @Autowired
    private TeacherLoginMapper teacherLoginMapper;
    @Override
    public boolean existsTeacher(TeacherLogin teacherLogin) {
        Teacher teacher = teacherLoginMapper.existsTeacher(teacherLogin);
        if (teacher==null){
            return false;
        }
        return true;
    }

    @Override
    public Teacher getTeacherByLogin(TeacherLogin teacherLogin) {
        return teacherLoginMapper.existsTeacher(teacherLogin);
    }
}
