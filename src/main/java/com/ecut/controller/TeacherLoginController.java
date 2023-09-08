package com.ecut.controller;

import com.ecut.pojo.Student;
import com.ecut.pojo.StudentLogin;
import com.ecut.pojo.Teacher;
import com.ecut.pojo.TeacherLogin;
import com.ecut.service.StudentLoginService;
import com.ecut.service.TeacherLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class TeacherLoginController {


    @Autowired
    private TeacherLoginService teacherLoginService;
    @RequestMapping("/teacherLogon")
    public String login(TeacherLogin teacherLogin, Model model, HttpSession session){
        boolean b = teacherLoginService.existsTeacher(teacherLogin);
        if (b){
            Teacher teacher = teacherLoginService.getTeacherByLogin(teacherLogin);
            session.setAttribute("teacher",teacher);
            session.removeAttribute("student");
            return "redirect:/index";
        }else {
            model.addAttribute("teacherLogin",teacherLogin);
            model.addAttribute("msgerr","工号或密码错误");

            return "client/teacherLogin";
        }
    }

    @RequestMapping("/teacherlogout")
    public String loginout(  HttpSession session){

        session.removeAttribute("teacher");
        return "redirect:/index";
    }


}
