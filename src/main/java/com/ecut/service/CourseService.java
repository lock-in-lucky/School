package com.ecut.service;

import com.ecut.pojo.Course;
import com.ecut.pojo.CourseSmall;
import com.ecut.pojo.Page;
import com.ecut.pojo.Student;

import java.util.List;
import java.util.Map;

public interface CourseService {
    /**
     * 添加课程
     * @param course
     * @return
     */
    int addCourse(Course course);

    /**
     * 通过id删除课程
     * @param id
     * @return
     */
    int deleteCourseById(String id);

    /**
     * 更新课程
     * @param course
     * @return
     */
    int updateCourse(Course course);

    /**
     * 分页查询课程
     * @param currentPage
     * @return
     */
    Page<Course> findByPage(Integer currentPage);

    /**
     * 查询总记录数
     * @return
     */
    Integer selectCount();

    /**
     * 按课程名和任课教师
     * @param courseSmall
     * @return
     */
    List<Course> selectForStudent(CourseSmall courseSmall);
}
