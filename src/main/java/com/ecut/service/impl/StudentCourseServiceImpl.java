package com.ecut.service.impl;

import com.ecut.dao.StudentCourseMapper;
import com.ecut.pojo.Course;
import com.ecut.pojo.Page;
import com.ecut.pojo.Student;
import com.ecut.service.StudentCourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class StudentCourseServiceImpl implements StudentCourseService {
    @Autowired
    private StudentCourseMapper studentCourseMapper;


    @Override
    public List<Course> getCourseById(String id) {
        return studentCourseMapper.getCourseById(id);
    }

    @Override
    public Page<Course> findByPage(Integer currentPage, String studentId) {

        Map<String,Object> map=new HashMap<>();
        Page<Course> page =new Page<>();
        page.setCurrPage(currentPage);


        //封装总记录数
        Integer pageCount =studentCourseMapper.selectCount(studentId);
        page.setTotalCount(pageCount);

        //总的页数
        double pc=pageCount;
        Double num=Math.ceil(pc/Page.PAGE_SIZES);
        page.setTotalPage(num.intValue());


        map.put("start",(currentPage-1)*Page.PAGE_SIZES);
        map.put("size",Page.PAGE_SIZES);
        map.put("studentId",studentId);

        //封装查询到的学生
        List<Course> byPage = studentCourseMapper.findByPage(map);
        //将查到的学生封装到Page中
        page.setLists(byPage);
        return page;
    }
}
