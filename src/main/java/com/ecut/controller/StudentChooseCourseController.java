package com.ecut.controller;

import com.ecut.pojo.Course;
import com.ecut.pojo.Page;
import com.ecut.pojo.Score;
import com.ecut.pojo.Student;
import com.ecut.service.StudentChooseCourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/client/s")
public class StudentChooseCourseController {
    @Autowired
    private StudentChooseCourseService studentChooseCourseService;
    /**
     * 分页查询学生课程
     * @param currentPage
     * @param model
     * @return
     */
    @RequestMapping("/studentchoosecourse/{num}")
    public String page(@RequestParam(value = "currentPage",defaultValue="1",required=false) Integer currentPage, Model model, @PathVariable("num") Integer num, HttpSession session){
//        Object courseList =  model.getAttribute("courses");

//        Student student = (Student) session.getAttribute("student");

        //测试用
//        if (student==null){
//            student=new Student();
//            student.setStudentId("2019213038");
//        }
//        System.out.println(student);
        Page<Course> byPage = studentChooseCourseService.getCourseByPage(currentPage);
//        if (courseList!=null){
//            List<Course> courses= (List<Course>) courseList;
//            byPage.setLists(courses);
//            System.out.println("++"+courses);
//            model.addAttribute("flag", 1);
//        }
        Student student = (Student) session.getAttribute("student");
        Score score=new Score();
        score.setStudentId(student.getStudentId());

        for (Course course:byPage.getLists()){
            score.setCourseId(course.getCourseId());
            boolean b = studentChooseCourseService.existCourse(score);
            if (b){
                course.setFlag(1);
            }else {
                course.setFlag(0);
            }
        }
        model.addAttribute("studentChooseCoursesByPage",byPage);
        model.addAttribute("studentTitle", num);
        return "client/student";
    }
    /**
     * 选课
     * @param currentPage
     * @param model
     * @return
     */
    @RequestMapping("/choosecourse/{num}")
    public String choosecourse(@RequestParam(value = "currentPage",defaultValue="1",required=false) Integer currentPage, Model model, @PathVariable("num") Integer num, HttpSession session,String courseId){

        Student student = (Student) session.getAttribute("student");
        Score score=new Score();
        score.setStudentId(student.getStudentId());
        score.setCourseId(courseId);
        boolean b = studentChooseCourseService.existCourse(score);
        if (b){
            model.addAttribute("failedFlag","该学生已经选修了此课程！！");
            return "failed/404";
        }

        studentChooseCourseService.studentChooseCourse(score);
        model.addAttribute("score",score);
        if (b){
            model.addAttribute("chooseFlag",1);
        }else {
            model.addAttribute("chooseFlag",0);
        }
        return page(currentPage,model,num,session);
    }

    @RequestMapping("/delchoosecourse/{num}")
    public String delchoosecourse(@RequestParam(value = "currentPage",defaultValue="1",required=false) Integer currentPage, @PathVariable("num") Integer num,Model model, HttpSession session,String courseId){

        Student student = (Student) session.getAttribute("student");
        Score score=new Score();
        score.setStudentId(student.getStudentId());
        score.setCourseId(courseId);
        studentChooseCourseService.delCourse(score);
        return page(currentPage,model,num,session);
    }


}
