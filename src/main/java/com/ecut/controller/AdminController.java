package com.ecut.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
    @RequestMapping("/admin/index")
    public String index(){
        return "admin/index";
    }
    @RequestMapping("/admin/home")
    public String home(Model model){
        System.out.println("home!!");
        model.addAttribute("titleFlag",0);
        return "admin/home";
    }

    @RequestMapping("/adminLogin")
    public String login(){
        System.out.println("login!!");
        return "admin/AdminLogin";
    }

}
