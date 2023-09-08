package com.ecut.service;

import com.ecut.pojo.Lecture;
import com.ecut.pojo.SheTuanActivity;

import java.util.List;

public interface LectureService {
    /**
     * 随机获取一条讲座
     * @return
     */
    Lecture getLecture();

    /**
     * 根据id获取讲座
     */
    Lecture getLectureById(Integer id);
    /**
     * 查询所有将要举办的讲座,但是不包含为id的活动
     * @return
     */
    List<Lecture> getLectureByTime(Integer id);
}
