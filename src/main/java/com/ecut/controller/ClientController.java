package com.ecut.controller;

import com.ecut.pojo.Jobs;
import com.ecut.pojo.Lecture;
import com.ecut.pojo.SheTuanActivity;
import com.ecut.service.JobsService;
import com.ecut.service.LectureService;
import com.ecut.service.SheTuanActivityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ClientController {
    @Autowired
    private SheTuanActivityService sheTuanActivityService;
    @Autowired
    private LectureService lectureService;
    @Autowired
    private JobsService jobsService;
    @RequestMapping("/index")
    public String index(Model model){

        SheTuanActivity getActivity = sheTuanActivityService.getActivity();

        Lecture lecture = lectureService.getLecture();

        Jobs jobs = jobsService.getJobs();
        model.addAttribute("getActivity",getActivity);
        model.addAttribute("lecture",lecture);
        model.addAttribute("jobs",jobs);
        return "client/index";
    }

    @RequestMapping("/sLogin")
    public String studentIndex(){
        return "client/studentLogin";
    }

    @RequestMapping("/tLogin")
    public String teacherIndex(){
        return "client/teacherLogin";
    }


    @RequestMapping("/client/t/score")
    public String teacherGiveScore(){
        return "client/score";
    }


}
