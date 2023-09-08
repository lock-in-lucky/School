package com.ecut.controller;

import com.ecut.pojo.Teacher;
import com.ecut.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class TeacherController {
    @Autowired
    private TeacherService teacherService;

    public void setTeacherService(TeacherService teacherService) {
        this.teacherService = teacherService;
    }
    @RequestMapping("/t1")
    public String test1(Model model){
        teacherService.insert(new Teacher("2019213030","张三","26178gasui","11028271691","123@qq.com","软件",null));
        model.addAttribute("hi", "成功插入");
        return "test";
    }
    @RequestMapping("/t2")
    public String test2(Model model){
        model.addAttribute("hi", "你好");
        return "test";
    }

}
