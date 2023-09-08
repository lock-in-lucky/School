package com.ecut.service.impl;

import com.ecut.dao.LectureMapper;
import com.ecut.pojo.Lecture;
import com.ecut.service.LectureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LectureServiceImpl implements LectureService {
    @Autowired
    private LectureMapper lectureMapper;


    @Override
    public Lecture getLecture() {
        return lectureMapper.getLecture();
    }

    @Override
    public Lecture getLectureById(Integer id) {
        return lectureMapper.getLectureById(id);
    }

    @Override
    public List<Lecture> getLectureByTime(Integer id) {
        List<Lecture> lectureByTime = lectureMapper.getLectureByTime();
        for (int i = 0; i < lectureByTime.size(); i++) {
            if (lectureByTime.get(i).getId().intValue()==id.intValue()){
                lectureByTime.remove(i);
            }
        }
        return lectureByTime;
    }
}
