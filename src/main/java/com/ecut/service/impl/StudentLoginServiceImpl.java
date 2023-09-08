package com.ecut.service.impl;

import com.ecut.dao.StudentLoginMapper;
import com.ecut.pojo.Student;
import com.ecut.pojo.StudentLogin;
import com.ecut.service.StudentLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudentLoginServiceImpl implements StudentLoginService {
    @Autowired
    private StudentLoginMapper studentLoginMapper;
    @Override
    public boolean existsStudent(StudentLogin studentLogin) {
        Student student = studentLoginMapper.existsStudent(studentLogin);
        if (student==null){
            return false;
        }
        return true;
    }

    @Override
    public Student getStudent(StudentLogin studentLogin) {
        return studentLoginMapper.existsStudent(studentLogin);
    }
}
