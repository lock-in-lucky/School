package com.ecut.controller;

import com.ecut.pojo.Classes;
import com.ecut.pojo.Student;
import com.ecut.pojo.Teacher;
import com.ecut.service.TeacherClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/client/t")
public class ClientTeacherController {

    @Autowired
    private TeacherClassService teacherClassService;

    @RequestMapping("/teacher/{num}")
    public String teacherIndex(@PathVariable("num") Integer num, Model model){
        model.addAttribute("teacherTitle",num);
        return "client/teacher";
    }
    @RequestMapping("/teacherClass/{num}")
    public String teacherClass(@PathVariable("num") Integer num, Model model, HttpSession session){
        Teacher teacher = (Teacher) session.getAttribute("teacher");
        if (teacher==null){
            teacher.setTeacherId("2019213065");
        }
        Classes classes = teacherClassService.getClasses(teacher.getTeacherId());
        model.addAttribute("classes",classes);
        model.addAttribute("teacherTitle",num);
        return "client/teacher";
    }

    @RequestMapping("/teacherClassStudent/{num}")
    @ResponseBody
    public List<Student> teacherClassStudent(@PathVariable("num") Integer num, Model model, HttpSession session){
        Teacher teacher = (Teacher) session.getAttribute("teacher");
        if (teacher==null){
            teacher.setTeacherId("2019213065");
        }
        List<Student> students = teacherClassService.getStudents(teacher.getTeacherId());
//        model.addAttribute("students",students);
        model.addAttribute("teacherTitle",num);
        return students;
    }

}
