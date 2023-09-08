package com.ecut.controller;

import com.ecut.pojo.*;
import com.ecut.service.CourseService;
import com.ecut.service.StudentCourseService;
import com.ecut.service.StudentScoreService;
import com.ecut.service.StudentService;
import com.ecut.service.impl.CourseServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/client/s")
public class ClientStudentController {

    @Autowired
    private StudentCourseService studentCourseService;

    @Autowired
    private CourseService courseService;

    @Autowired
    private StudentScoreService studentScoreService;

    @RequestMapping("/student/{num}")
    public String studentIndex(@PathVariable("num") Integer num, Model model){
        model.addAttribute("studentTitle",num);
        return "client/student";
    }


    /**
     * 分页查询学生课程
     * @param currentPage
     * @param model
     * @return
     */
    @RequestMapping("/studentcourse/{num}")
    public String page(@RequestParam(value = "currentPage",defaultValue="1",required=false) Integer currentPage, Model model, @PathVariable("num") Integer num, HttpSession session){
        Object courseList =  model.getAttribute("courses");

        Student student = (Student) session.getAttribute("student");

        //测试用
//        if (student==null){
//            student=new Student();
//            student.setStudentId("2019213038");
//        }
//        System.out.println(student);
        Page<Course> byPage = studentCourseService.findByPage(currentPage, student.getStudentId());
//        List<Course> courses = studentCourseService.getCourseById(student.getStudentId());
        if (courseList!=null){
            List<Course> courses= (List<Course>) courseList;
            byPage.setLists(courses);
            System.out.println("++"+courses);
            model.addAttribute("flag", 1);
        }
        model.addAttribute("coursesByPage",byPage);
        model.addAttribute("studentTitle", num);
        return "client/student";
    }

    /**
     * 按课程名和任课老师查询课程
     * @param courseSmall
     * @param model
     * @return
     */
    @RequestMapping("/queryForCourse")
    public String queryForClasses(CourseSmall courseSmall, Model model,HttpSession session ){
        List<Course> courseList = courseService.selectForStudent(courseSmall);
        model.addAttribute("courseSmall",courseSmall);
        model.addAttribute("courses",courseList);
        return page(1, model,2,session);
    }



    /**
     * 分页查询学生成绩
     * @param currentPage
     * @param model
     * @return
     */
    @RequestMapping("/studentscore/{num}")
    public String pageScore(@RequestParam(value = "currentPage",defaultValue="1",required=false) Integer currentPage, Model model, @PathVariable("num") Integer num, HttpSession session){
        Object courseScore =  model.getAttribute("courseScore");

        Student student = (Student) session.getAttribute("student");

        //测试用
        if (student==null){
            student=new Student();
            student.setStudentId("2019213038");
        }
        Page<CourseScore> byPage = studentScoreService.getScore(currentPage, student.getStudentId());
        if (courseScore!=null){
            List<CourseScore> courses= (List<CourseScore>) courseScore;
            byPage.setLists(courses);
            model.addAttribute("flag", 1);
        }
        model.addAttribute("scoreByPage",byPage);
        model.addAttribute("studentTitle", num);
        return "client/student";
    }

    /**
     * 按课程名查询成绩
     * @param model
     * @return
     */
    @RequestMapping("/queryForScore")
    public String queryForScore(String courseName, Model model,HttpSession session ){
        Student student = (Student) session.getAttribute("student");
        //测试用
//        if (student==null){
//            student=new Student();
//            student.setStudentId("2019213038");
//        }
        Map<String,Object> map=new HashMap<>();
        map.put("studentId",student.getStudentId());
        map.put("courseName",courseName);
        List<CourseScore>  courseScore=studentScoreService.selectForScore(map);
        model.addAttribute("courseName",courseName);
        model.addAttribute("courseScore",courseScore);
        return pageScore(1, model,3,session);
    }
}
