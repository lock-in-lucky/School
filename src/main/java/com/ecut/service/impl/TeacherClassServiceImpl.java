package com.ecut.service.impl;

import com.ecut.dao.TeacherClassMapper;
import com.ecut.pojo.Classes;
import com.ecut.pojo.Student;
import com.ecut.service.TeacherClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class TeacherClassServiceImpl implements TeacherClassService {
    @Autowired
    private TeacherClassMapper teacherClassMapper;
    @Override
    public List<Student> getStudents(String teacherId) {
        return teacherClassMapper.getStudentsByTeacherId(teacherId);
    }

    @Override
    public Classes getClasses(String teacherId) {
        return teacherClassMapper.getClasses(teacherId);
    }

}
