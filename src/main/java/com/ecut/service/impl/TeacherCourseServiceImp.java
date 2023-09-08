package com.ecut.service.impl;

import com.ecut.dao.TeacherCourseMapper;
import com.ecut.pojo.Course;
import com.ecut.pojo.CourseScore;
import com.ecut.pojo.Page;
import com.ecut.service.TeacherCourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class TeacherCourseServiceImp implements TeacherCourseService {

    @Autowired
    private TeacherCourseMapper teacherCourseMapper;
    @Override
    public List<Course> getCoursesByTeacherId(String teacherId) {
        return teacherCourseMapper.getCoursesByTeacherId(teacherId);
    }
    @Override
    public Page<Course> getCourseByPage(Integer currentPage,String teacherId) {
        Map<String,Object> map=new HashMap<>();
        Page<Course> page =new Page<>();
        page.setCurrPage(currentPage);

        Integer pageCount = teacherCourseMapper.selectCount(teacherId);
        page.setTotalCount(pageCount);

        //总的页数
        double pc=pageCount;
        Double num=Math.ceil(pc/Page.PAGE_SIZES);
        page.setTotalPage(num.intValue());


        map.put("start",(currentPage-1)*Page.PAGE_SIZES);
        map.put("size",Page.PAGE_SIZES);
        map.put("teacherId",teacherId);

        List<Course> courses = teacherCourseMapper.getCourseByPage(map);
        page.setLists(courses);
        return page;
    }
}
