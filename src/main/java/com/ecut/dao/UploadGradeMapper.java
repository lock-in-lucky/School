package com.ecut.dao;

import com.ecut.pojo.Course;
import com.ecut.pojo.Score;
import com.ecut.pojo.Student;

import java.util.List;
import java.util.Map;

public interface UploadGradeMapper {
    /**
     * 通过课程号获取学生
     * @param courseId
     * @return
     */
    Course getCourseByCourseId(String courseId);

    int addMoreScore(Map<String,List<Score>> map);
}
