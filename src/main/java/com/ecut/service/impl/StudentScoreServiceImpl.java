package com.ecut.service.impl;

import com.ecut.dao.StudentScoreMapper;
import com.ecut.pojo.*;
import com.ecut.service.StudentScoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class StudentScoreServiceImpl implements StudentScoreService {
    @Autowired
    private StudentScoreMapper studentScoreMapper;

    @Override
    public Page<CourseScore> getScore(Integer currentPage,String studentId) {
        Map<String,Object> map=new HashMap<>();
        Page<CourseScore> page =new Page<>();
        page.setCurrPage(currentPage);

        Integer pageCount = studentScoreMapper.selectCount(studentId);
        page.setTotalCount(pageCount);

        //总的页数
        double pc=pageCount;
        Double num=Math.ceil(pc/Page.PAGE_SIZES);
        page.setTotalPage(num.intValue());


        map.put("start",(currentPage-1)*Page.PAGE_SIZES);
        map.put("size",Page.PAGE_SIZES);
        map.put("studentId",studentId);

        List<CourseScore> courseScore = studentScoreMapper.getCourseScore(map);
        page.setLists(courseScore);

        return page;
    }

    @Override
    public List<CourseScore> selectForScore(Map<String, Object> map) {
        return studentScoreMapper.getCourseScoreBymap(map);
    }

    @Override
    public Integer selectScore(String studentId) {
        return studentScoreMapper.selectCount(studentId);

    }

    @Override
    public Integer selectScoreByCourse(String courseId) {
        return null;
    }
}
