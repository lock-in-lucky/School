package com.ecut.service;

import com.ecut.pojo.Course;
import com.ecut.pojo.Page;

import java.util.List;

public interface TeacherCourseService {
    /**
     * 通过教师Id获取所有课程
     * @param teacherId
     * @return
     */
    List<Course> getCoursesByTeacherId(String teacherId);


    /**
     * 通过教师id分页获取课程
     * @param teacherId
     * @return
     */
    Page<Course> getCourseByPage(Integer currentPage,String teacherId);
}
