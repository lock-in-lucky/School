package com.ecut.dao;

import com.ecut.pojo.Course;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface StudentCourseMapper {

    /**
     * 根据学号id获取该学生的课程
     * @param id
     * @return
     */
    List<Course> getCourseById(String id);

    /**
     * 根据学号id查询课程总数
     * @return
     */
    Integer selectCount(String studentId);

    /**
     * 分页查询课程
     * @param map
     * @return
     */
    List<Course> findByPage(Map<String, Object> map);
}
