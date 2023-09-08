package com.ecut.controller;

import com.ecut.pojo.*;
import com.ecut.service.TeacherCourseService;
import com.ecut.service.UploadGradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/client/t")
public class TeacherCourseController {
    @Autowired
    private TeacherCourseService teacherCourseService;
    @Autowired
    private UploadGradeService uploadGradeService;
    @RequestMapping("/showstudentandcourse")
    public String showstudentandcourse(@RequestParam("courseId") String courseId, Model model,HttpSession session){
        Course courseByCourseId = uploadGradeService.getCourseByCourseId(courseId);
        model.addAttribute("courseByCourseId",courseByCourseId);
        return "client/score";
    }
    @RequestMapping("/addAllScore")
    public String addAllScore( String[] courseId,String[] studentId,Integer[] score, Model model,HttpSession session){
        List<Score> scoreList=new ArrayList<>();
        for (int i = 0; i < courseId.length; i++) {
            Score score1=new Score(courseId[i],studentId[i],score[i]);
            scoreList.add(score1);
        }
        for (Score score1 : scoreList) {
            System.out.println(score1);
        }
        int i = uploadGradeService.addMoreScore(scoreList);

        return page(1,model,4,session);
    }


    /**
     * 分页查询学生课程
     * @param currentPage
     * @param model
     * @return
     */
    @RequestMapping("/teachercourse/{num}")
    public String page(@RequestParam(value = "currentPage",defaultValue="1",required=false) Integer currentPage, Model model, @PathVariable("num") Integer num, HttpSession session){
        Object courseList =  model.getAttribute("courses");

        Teacher teacher = (Teacher) session.getAttribute("teacher");

        //测试用
//        if (student==null){
//            student=new Student();
//            student.setStudentId("2019213038");
//        }
//        System.out.println(student);
        Page<Course> courseByPage = teacherCourseService.getCourseByPage(currentPage, teacher.getTeacherId());
//        List<Course> courses = studentCourseService.getCourseById(student.getStudentId());
//        if (courseList!=null){
//            List<Course> courses= (List<Course>) courseList;
//            byPage.setLists(courses);
//            System.out.println("++"+courses);
//            model.addAttribute("flag", 1);
//        }
        model.addAttribute("courseByPage",courseByPage);
        model.addAttribute("teacherTitle", num);
        return "client/teacher";
    }

}
