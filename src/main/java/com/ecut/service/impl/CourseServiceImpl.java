package com.ecut.service.impl;

import com.ecut.dao.CourseMapper;
import com.ecut.pojo.Course;
import com.ecut.pojo.CourseSmall;
import com.ecut.pojo.Page;
import com.ecut.pojo.Teacher;
import com.ecut.service.CourseService;
import com.ecut.utils.GetId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CourseServiceImpl implements CourseService {
    @Autowired
    private CourseMapper courseMapper;
    @Override
    public int addCourse(Course course) {

        String courseId= GetId.getCourseId();
        course.setCourseId(courseId);
        return courseMapper.addCourse(course);
    }

    @Override
    public int deleteCourseById(String id) {
        return courseMapper.deleteCourseById(id);
    }

    @Override
    public int updateCourse(Course course) {
        return courseMapper.updateCourse(course);
    }

    @Override
    public Page<Course> findByPage(Integer currentPage) {
        Map<String,Object> map=new HashMap<>();
        Page<Course> page=new Page<>();
        page.setCurrPage(currentPage);


        //封装总记录数
        Integer pageCount=courseMapper.selectCount();
        page.setTotalCount(pageCount);

        //总的页数
        double pc=pageCount;
        Double num=Math.ceil(pc/Page.PAGE_SIZES);
        page.setTotalPage(num.intValue());
        map.put("start", (currentPage-1)*Page.PAGE_SIZES);
        map.put("size", Page.PAGE_SIZES);
        //封装查询到的课程
        List<Course> courseList = courseMapper.findByPage(map);
        //将查到的老师封装到Page中
        page.setLists(courseList);
        return page;
    }



    @Override
    public Integer selectCount() {
        return courseMapper.selectCount();
    }

    @Override
    public List<Course> selectForStudent(CourseSmall courseSmall) {
        return courseMapper.selectForStudent(courseSmall);
    }
}
