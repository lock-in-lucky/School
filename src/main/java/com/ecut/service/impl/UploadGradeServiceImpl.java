package com.ecut.service.impl;

import com.ecut.dao.UploadGradeMapper;
import com.ecut.pojo.Course;
import com.ecut.pojo.Score;
import com.ecut.service.UploadGradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class UploadGradeServiceImpl implements UploadGradeService {
    @Autowired
    private UploadGradeMapper uploadGradeMapper;
    @Override
    public Course getCourseByCourseId(String courseId) {
        return uploadGradeMapper.getCourseByCourseId(courseId);
    }

    @Override
    public int addMoreScore(List<Score> scoreList) {
        Map<String,List<Score>> map=new HashMap<>();
        map.put("lists",scoreList);
        return uploadGradeMapper.addMoreScore(map);
    }
}
