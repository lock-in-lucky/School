package com.ecut.dao;

import com.ecut.pojo.Course;
import com.ecut.pojo.Score;

import java.util.List;
import java.util.Map;

public interface StudentChooseCourseMapper {

    /**
     * 分页显示课程
     * @return
     */
    List<Course> getCourseByLimit(Map map);

    /**
     * 查询总记录数
     * @return
     */
    Integer selectCount();

    /**
     * 在成绩表里面插入一条数据
     * @return
     */
    int insertCourse(Score score);

    /**
     * 判断成绩表里面是否有该项
     * @param score
     * @return
     */
    Score existsScore(Score score);

    int delScore(Score score);
}
