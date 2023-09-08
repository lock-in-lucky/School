package com.ecut.controller;

import com.ecut.dao.StudentLoginMapper;
import com.ecut.pojo.Admin;
import com.ecut.pojo.Student;
import com.ecut.pojo.StudentLogin;
import com.ecut.service.StudentLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class StudentLoginController {

    @Autowired
    private StudentLoginService studentLoginService;
    @RequestMapping("/studentLogon")
    public String login(StudentLogin studentLogin, Model model, HttpSession session){
        boolean b = studentLoginService.existsStudent(studentLogin);
        if (b){
            Student student = studentLoginService.getStudent(studentLogin);
            session.setAttribute("student",student);
            session.removeAttribute("teacher");
            return "redirect:/index";
        }else {
            model.addAttribute("studentLogin",studentLogin);
            model.addAttribute("msgerr","学号或密码错误");

            return "client/studentLogin";
        }
    }
    @RequestMapping("/studentlogout")
    public String loginout(  HttpSession session){

        session.removeAttribute("student");
        return "redirect:/index";
    }
}
