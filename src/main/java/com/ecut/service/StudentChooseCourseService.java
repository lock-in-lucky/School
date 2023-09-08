package com.ecut.service;

import com.ecut.pojo.Course;
import com.ecut.pojo.Page;
import com.ecut.pojo.Score;

import java.util.List;

public interface StudentChooseCourseService {
    Page<Course> getCourseByPage(Integer currentPage);


    int studentChooseCourse(Score score);

    /**
     * 判断是否存在课程
     * @param score
     * @return
     */
    boolean existCourse(Score score);

    int delCourse(Score score);

}
