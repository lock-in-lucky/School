package com.ecut.dao;

import com.ecut.pojo.Lecture;

import java.util.List;

public interface LectureMapper {
    /**
     * 随机获取一条讲座
     * @return
     */
    Lecture getLecture();

    /**
     * 查询将要举办的讲座
     * @return
     */
    List<Lecture> getLectureByTime();

    /**
     * 根据id获取讲座
     * @return
     */
    Lecture getLectureById(Integer id);
}
