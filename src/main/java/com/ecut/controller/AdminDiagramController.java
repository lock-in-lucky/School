package com.ecut.controller;

import com.ecut.service.ClassesService;
import com.ecut.service.CourseService;
import com.ecut.service.StudentService;
import com.ecut.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminDiagramController {
    @Autowired
    private TeacherService teacherService;
    @Autowired
    private StudentService studentService;
    @Autowired
    private CourseService courseService;
    @Autowired
    private ClassesService classesService;
    /**
     * 请求图的数据
     * @return
     */
    @RequestMapping("/diagram")
    @ResponseBody
    public List<Integer> updateDiagram(){

        Integer integer = teacherService.selectCount();

        Integer integer1 = studentService.selectCount();
        Integer integer2 = courseService.selectCount();
        Integer integer3 = classesService.selectCount();
        List<Integer> list=new ArrayList<>();
        list.add(integer);
        list.add(integer1);
        list.add(integer2);
        list.add(integer3);
//
//
//        String s = JSON.toJSONString(list);
//        System.out.println(s);
        return list;
    }
}
