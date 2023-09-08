package com.ecut.service;

import com.ecut.pojo.CourseScore;
import com.ecut.pojo.Page;
import com.ecut.pojo.Score;
import com.ecut.pojo.Student;

import java.util.List;
import java.util.Map;

/**
 * @author 虞宇明
 */
public interface StudentScoreService {
    Page<CourseScore> getScore(Integer currentPage, String studentId);

    List<CourseScore> selectForScore(Map<String, Object> map);

    public Integer selectScore(String studentId);
    public Integer selectScoreByCourse(String courseId);

}
