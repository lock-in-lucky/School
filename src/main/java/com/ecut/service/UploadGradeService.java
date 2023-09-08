package com.ecut.service;

import com.ecut.pojo.Course;
import com.ecut.pojo.Score;

import java.util.List;
import java.util.Map;

public interface UploadGradeService {
    Course getCourseByCourseId(String courseId);

    int addMoreScore(List<Score> scoreList);

}
