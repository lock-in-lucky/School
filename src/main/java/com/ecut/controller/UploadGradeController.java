package com.ecut.controller;

import com.ecut.pojo.Course;
import com.ecut.pojo.Score;
import com.ecut.service.UploadGradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/client/t")
public class UploadGradeController {
//    @Autowired
//    private UploadGradeService uploadGradeService;
//    @RequestMapping("/showstudentandcourse")
//    public String showstudentandcourse(@RequestParam("courseId") String courseId, Model model){
//        Course courseByCourseId = uploadGradeService.getCourseByCourseId(courseId);
//        model.addAttribute("courseByCourseId",courseByCourseId);
//        return "client/score";
//    }
//    @RequestMapping("/addAllScore")
//    public String addAllScore( String[] courseId,String[] studentId,Integer[] score, Model model){
//        List<Score> scoreList=new ArrayList<>();
//        for (int i = 0; i < courseId.length; i++) {
//            Score score1=new Score(courseId[i],studentId[i],score[i]);
//            scoreList.add(score1);
//        }
//        for (Score score1 : scoreList) {
//            System.out.println(score1);
//        }
//        int i = uploadGradeService.addMoreScore(scoreList);
//
//        return "client/score";
//    }


}
