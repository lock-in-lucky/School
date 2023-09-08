package com.ecut.controller;

import com.ecut.pojo.*;
import com.ecut.service.CourseService;
import com.ecut.service.StudentScoreService;
import com.ecut.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminCourseController {
    @Autowired
    private CourseService courseService;
    @Autowired
    private TeacherService teacherService;
    @Autowired
    private StudentScoreService studentScoreService;

    /**
     * 分页查询课程
     * @param currentPage
     * @param model
     * @return
     */
    @RequestMapping("/coursespage/{num}")
    public String page(@RequestParam(value = "currentPage",defaultValue="1",required=false) Integer currentPage, Model model, @PathVariable("num") Integer num){
        Object courseList =  model.getAttribute("courseList");


        Page<Course> byPage = courseService.findByPage(currentPage);
        if (courseList!=null){
            List<Course> courses= (List<Course>) courseList;
            byPage.setLists(courses);
            model.addAttribute("flag", 1);
        }
        model.addAttribute("byCoursePage",byPage);
        model.addAttribute("titleFlag", num);
        return "admin/home";
    }
    /**
     * 根据学号删除学生
     * @param currentPage
     * @param model
     * @return
     */
    @RequestMapping("/deleteCourse/{courseId}/{currentPage}")
    public String delete(@RequestParam(value = "currentPage",defaultValue="1",required=false) Integer currentPage, Model model,@PathVariable("courseId") String courseId){
        studentScoreService.selectScoreByCourse(courseId);
        if (courseId!=null){
            model.addAttribute("failedFlag","已经有学生选修此课程，不能删除！！");
            return "failed/404";
        }
        courseService.deleteCourseById(courseId);
        return page(currentPage,model,3);
    }
    /**
     * 按课程名和任课老师查询课程
     * @param courseSmall
     * @param model
     * @return
     */
    @RequestMapping("/queryForCourse")
    public String queryForClasses(CourseSmall courseSmall, Model model ){
        List<Course> courseList = courseService.selectForStudent(courseSmall);
        model.addAttribute("courseSmall",courseSmall);
        model.addAttribute("courseList",courseList);
        return page(1, model,3);
    }
    /**
     * 更新课程信息
     * @param course
     * @return
     */
    @RequestMapping("/updateCourse/{currentPage}")
    public String updateClasses(Course course,Model model,@PathVariable("currentPage") Integer currentPage) {
        String courseTeacher = course.getCourseTeacher();
        Teacher teacher = teacherService.queryTeacherByName(courseTeacher);
        if (teacher==null){
            model.addAttribute("failedFlag","该教师不存在！！");
            return "failed/404";
        }
        courseService.updateCourse(course);
        return page(currentPage, model,3);
    }


    /**
     * 添加课程
     * @param course
     * @param model
     * @return
     */
    @RequestMapping("/addCourse")
    public String add(Course course,Model model){
        String courseTeacher = course.getCourseTeacher();
        Teacher teacher = teacherService.queryTeacherByName(courseTeacher);
        if (teacher==null){
            model.addAttribute("failedFlag","该教师不存在！！");
            return "failed/404";
        }
        courseService.addCourse(course);
        Integer integer = courseService.selectCount();
        double i=integer;
        Double ceil = Math.ceil(i / Page.PAGE_SIZES);
        return page(ceil.intValue(),model,3);
    }
}
