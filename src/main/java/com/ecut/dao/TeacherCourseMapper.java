package com.ecut.dao;

import com.ecut.pojo.Course;

import java.util.List;
import java.util.Map;

/**
 * @author 虞宇明
 */
public interface TeacherCourseMapper {
    /**
     * 通过教师Id获取所有课程
     * @param teacherId
     * @return
     */
    List<Course> getCoursesByTeacherId(String teacherId);

    /**
     * 通过teacherId获取总记录数
     * @param teacherId
     * @return
     */
    Integer selectCount(String teacherId);

    /**
     * 根据教师id分页查询课程
     * @param map
     * @return
     */
    List<Course> getCourseByPage(Map<String, Object> map);
}
