package com.ecut.controller;

import com.ecut.pojo.Admin;
import com.ecut.service.AdminLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class AdminLoginController {

    @Autowired
    private AdminLoginService adminLoginService;


    @RequestMapping("/adminLogon")
    public String login(Admin admin, Model model, HttpSession session){
        boolean existsAdmin = adminLoginService.existsAdmin(admin);
        if (existsAdmin){
            Admin admin1 = adminLoginService.getAdmin(admin);
            session.setAttribute("adminUser",admin1);
            return "redirect:/admin/home";
        }else {
            model.addAttribute("admin",admin);
            model.addAttribute("msgerr","账号或密码错误");

            return "admin/AdminLogin";
        }
    }
    @RequestMapping("/adminlogout")
    public String loginout(  HttpSession session){

        session.removeAttribute("adminUser");
//        session.invalidate();
        return "redirect:/index";
    }


}
