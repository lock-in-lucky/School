package com.ecut.service.impl;

import com.ecut.dao.StudentChooseCourseMapper;
import com.ecut.pojo.Course;
import com.ecut.pojo.Page;
import com.ecut.pojo.Score;
import com.ecut.service.StudentChooseCourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class StudentChooseCourseServiceImpl implements StudentChooseCourseService {
    @Autowired
    private StudentChooseCourseMapper studentChooseCourseMapper;
    @Override
    public Page<Course> getCourseByPage(Integer currentPage) {
        Map<String,Object> map=new HashMap<>();
        Page<Course> page =new Page<>();
        page.setCurrPage(currentPage);


        //封装总记录数
        Integer pageCount =studentChooseCourseMapper.selectCount();
        page.setTotalCount(pageCount);

        //总的页数
        double pc=pageCount;
        Double num=Math.ceil(pc/Page.PAGE_SIZES);
        page.setTotalPage(num.intValue());


        map.put("start",(currentPage-1)*Page.PAGE_SIZES);
        map.put("size",Page.PAGE_SIZES);

        //封装查询到的课程
        List<Course> byPage = studentChooseCourseMapper.getCourseByLimit(map);
        //将查到的学生封装到Page中
        page.setLists(byPage);
        return page;
    }

    @Override
    public int studentChooseCourse(Score score) {
        return studentChooseCourseMapper.insertCourse(score);
    }

    @Override
    public boolean existCourse(Score score) {
        if (studentChooseCourseMapper.existsScore(score)==null){
            return false;
        }
        return true;
    }

    @Override
    public int delCourse(Score score) {

        return studentChooseCourseMapper.delScore(score);
    }
}
