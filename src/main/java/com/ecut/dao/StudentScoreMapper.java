package com.ecut.dao;

import com.ecut.pojo.CourseScore;

import java.util.List;
import java.util.Map;

public interface StudentScoreMapper {

    /**
     * 分页查询学号为studentId的所有课程分数
     * @param map
     * @return
     */
    List<CourseScore> getCourseScore(Map<String,Object> map);

    /**
     * 查询学号为studentId的课程总数
     * @param studentId
     * @return
     */
    Integer selectCount(String studentId);
    Integer selectCountByCourse(String courseId);

    /**
     * 根据学号为studentId和课程名查询CourseScore
     * @param map
     * @return
     */
    List<CourseScore> getCourseScoreBymap(Map<String, Object> map);
}
