package com.ecut.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/client")
public class HLHSController {

    @RequestMapping("/new1")
    public String new1(){
        return "client/news1";
    }
    @RequestMapping("/new2")
    public String new2(){
        return "client/news2";
    }
    @RequestMapping("/new3")
    public String new3(){
        return "client/news3";
    }
    @RequestMapping("/new4")
    public String new4(){
        return "client/news4";
    }
    @RequestMapping("/new5")
    public String new5(){
        return "client/news5";
    }
    @RequestMapping("/new6")
    public String new6(){
        return "client/news6";
    }
    @RequestMapping("/new7")
    public String new7(){
        return "client/news7";
    }
    @RequestMapping("/new8")
    public String new8(){
        return "client/news8";
    }
    @RequestMapping("/new9")
    public String new9(){
        return "client/news9";
    }
    @RequestMapping("/new10")
    public String new10(){
        return "client/news10";
    }
    @RequestMapping("/activity")
    public String activity(){

        return "client/HLHS";
    }
}
