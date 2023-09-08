package com.ecut.controller;

import com.ecut.pojo.*;
import com.ecut.service.ClassesService;
import com.ecut.service.StudentScoreService;
import com.ecut.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @author 虞宇明
 */
@Controller
@RequestMapping("/admin")
public class AdminStudentController {
    @Autowired
    private StudentService studentService;
    @Autowired
    private StudentScoreService studentScoreService;
    @Autowired
    private ClassesService classesService;


    /**
     * 分页查询学生
     * @param currentPage
     * @param model
     * @return
     */
    @RequestMapping("/studentspage/{num}")
    public String page(@RequestParam(value = "currentPage",defaultValue="1",required=false) Integer currentPage, Model model, @PathVariable("num") Integer num){
        Object students =  model.getAttribute("studentList");
//        if (classes!=null){
//            List<Classes> classesList= (List<Classes>) classes;
//        }

        Page<Student> byPage = studentService.findByPage(currentPage);
        if (students!=null){
            List<Student> studentList= (List<Student>) students;
            byPage.setLists(studentList);
            model.addAttribute("flag", 1);
        }
        model.addAttribute("byStudentPage",byPage);
        model.addAttribute("titleFlag", num);
        return "admin/home";
    }
    /**
     * 根据学号删除学生
     * @param currentPage
     * @param model
     * @return
     */
    @RequestMapping("/deleteStudent/{studentId}/{currentPage}")
    public String delete(@RequestParam(value = "currentPage",defaultValue="1",required=false) Integer currentPage, Model model,@PathVariable("studentId") String studentId){
        Integer integer = studentScoreService.selectScore(studentId);

        if (integer>0){
            model.addAttribute("failedFlag","该学生已经选课，请先退选再删除该学生信息！！");
            return "failed/404";
        }
        studentService.deleteStudent(studentId);
        return page(currentPage,model,2);
    }

    /**
     * 更新学生信息
     * @param student
     * @return
     */
    @RequestMapping("/updateStudent/{currentPage}")
    public String updateClasses(Student student,Model model,@PathVariable("currentPage") Integer currentPage) {
        String studentClassId = student.getStudentClassId();
        Classes classes = classesService.queryClassesById(studentClassId);
        if (classes==null){
            model.addAttribute("failedFlag","没有此班级，请重新输入班级！！");
            return "failed/404";
        }
        studentService.updateStudent(student);
        return page(currentPage, model,2);
    }
    /**
     * 按班级号和姓名查询学生
     * @param studentSmall
     * @param model
     * @return
     */
    @RequestMapping("/queryForStudent")
    public String queryForClasses(StudentSmall studentSmall, Model model ){
        List<Student> studentList = studentService.queryForStudent(studentSmall);
        model.addAttribute("studentSmall",studentSmall);
        model.addAttribute("studentList",studentList);
        return page(1, model,2);
    }

    /**
     * 添加学生
     * @param student
     * @param model
     * @return
     */
    @RequestMapping("/addStudent")
    public String add(Student student,Model model){
        String studentClassId = student.getStudentClassId();
        Classes classes = classesService.queryClassesById(studentClassId);
        if (classes==null){
            model.addAttribute("failedFlag","没有此班级，请重新输入班级！！");
            return "failed/404";
        }
        studentService.addStudent(student);
        Integer integer = studentService.selectCount();
        double i=integer;
        Double ceil = Math.ceil(i / Page.PAGE_SIZES);
        return page(ceil.intValue(),model,2);
    }
}
