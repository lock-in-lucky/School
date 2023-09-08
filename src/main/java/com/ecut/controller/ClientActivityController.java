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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/client")
public class ClientActivityController {
    @Autowired
    private SheTuanActivityService sheTuanActivityService;
    @Autowired
    private LectureService lectureService;
    @Autowired
    private JobsService jobsService;

    @RequestMapping("/shetuan/{id}")
    public String shetuan(Model model,@PathVariable("id") Integer id){

        SheTuanActivity activity = sheTuanActivityService.getActivityById(id);
        List<SheTuanActivity> activityByTime = sheTuanActivityService.getActivityByTime(id);
        model.addAttribute("activity",activity);
        model.addAttribute("activityByTime",activityByTime);
        return "client/shetuan";
    }
    @RequestMapping("/lecture/{id}")
    public String lecture(Model model,@PathVariable("id") Integer id){


        Lecture lectureById = lectureService.getLectureById(id);
        List<Lecture> lectureByTime = lectureService.getLectureByTime(id);
        model.addAttribute("lectureById",lectureById);
        model.addAttribute("lectureByTime",lectureByTime);
        return "client/lecture";
    }
    @RequestMapping("/jobs/{id}")
    public String jobs(Model model,@PathVariable("id") Integer id){
        Jobs jobsById = jobsService.getJobsById(id);
        System.out.println("jobsById:"+id);
        List<Jobs> jobsRandom = jobsService.getJobsRandom(id);
        model.addAttribute("jobsById",jobsById);
        model.addAttribute("jobsRandom",jobsRandom);
        return "client/jobs";
    }
}
