package com.ecut.dao;

import com.ecut.pojo.Course;
import com.ecut.pojo.CourseSmall;
import com.ecut.pojo.Student;
import com.ecut.pojo.StudentSmall;

import java.util.List;
import java.util.Map;

public interface CourseMapper {
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
     * @param map
     * @return
     */
    List<Course> findByPage(Map<String,Object> map);

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
