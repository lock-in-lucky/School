package com.ecut.service;

import com.ecut.pojo.Course;
import com.ecut.pojo.Page;
import com.ecut.pojo.Student;

import java.util.List;

public interface StudentCourseService {
    /**
     * 根据学号id获取该学生的课程
     * @param id
     * @return
     */
    List<Course> getCourseById(String id);

    /**
     * 分页查找班级
     * @param currentPage
     * @return
     */
    Page<Course> findByPage(Integer currentPage,String studentId);
}
