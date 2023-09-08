package com.ecut.controller;

import com.ecut.pojo.*;
import com.ecut.service.ClassesService;
import com.ecut.service.StudentService;
import com.ecut.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/admin")
public class AdminClassesController {

    @Autowired
    private ClassesService classesService;

    @Autowired
    private TeacherService teacherService;
    @Autowired
    private StudentService studentService;


    public void setClassesService(ClassesService classesService) {
        this.classesService = classesService;
    }

    /**
     * 分页查询教师
     * @param currentPage
     * @param model
     * @return
     */
    @RequestMapping("/classespage/{num}")
    public String page(@RequestParam(value = "currentPage",defaultValue="1",required=false) Integer currentPage, Model model,@PathVariable("num") Integer num){
        Object classes =  model.getAttribute("classesList");
        System.out.println("嘻嘻嘻:"+classes);
//        if (classes!=null){
//            List<Classes> classesList= (List<Classes>) classes;
//        }

        Page<Classes> byPage = classesService.findByPage(currentPage);
        List<Classes> lists = byPage.getLists();
        if (classes!=null){
            List<Classes> classesList= (List<Classes>) classes;
            byPage.setLists(classesList);
            model.addAttribute("flag", 1);
        }
        model.addAttribute("byClassesPage",byPage);
        model.addAttribute("titleFlag", num);
        return "admin/home";
    }
    /**
     * 根据班级号删除班级号
     * @param currentPage
     * @param model
     * @return
     */
    @RequestMapping("/deleteClasses/{classId}/{currentPage}")
    public String delete(@RequestParam(value = "currentPage",defaultValue="1",required=false) Integer currentPage, Model model,@PathVariable("classId") String classId){
        int i = studentService.selectCountByClassId(classId);
        if (i>0){
            model.addAttribute("failedFlag","该班级有学生，请先删除学生信息！！");
            return "failed/404";
        }
        classesService.deleteClassesById(classId);

        return page(currentPage,model,4);
    }

    /**
     * 添加班级
     * @param classes
     * @param model
     * @return
     */
    @RequestMapping("/addClasses")
    public String add(Classes classes,Model model){


        String classId = classes.getClassId();
        Classes classes1 = classesService.queryClassesById(classId);
        if (classes1!=null){
            model.addAttribute("failedFlag","已存在该班级，请重新添加班级！！");
            return "failed/404";
        }
        String classTeacherName = classes.getClassTeacherName();
        String classTeacherId = classes.getClassTeacherId();
        Teacher teacher=new Teacher();
        teacher.setTeacherId(classTeacherId);
        teacher.setTeacherName(classTeacherName);
        Teacher teacher1 = teacherService.queryTeacher(teacher);
        if (teacher1!=null){
        classesService.addClasses(classes);
        Integer integer = classesService.selectCount();
        double i=integer;
        Double ceil = Math.ceil(i / Page.PAGE_SIZES);
        return page(ceil.intValue(),model,4);
        }else {
            model.addAttribute("failedFlag","教师工号或姓名错误！！");
            return "failed/404";
        }
    }

    /**
     * 更新班级
     * @param classes
     * @return
     */
    @RequestMapping("/updateClasses/{currentPage}/{classId}")
    public String updateClasses(Classes classes,Model model,@PathVariable("currentPage") Integer currentPage,@PathVariable("classId") Integer classId1) {
        String classId = classes.getClassId();
        Classes classes1 = classesService.queryClassesById(classId);
        if (classes1!=null){
            model.addAttribute("failedFlag","已存在该班级，请重新修改班级！！");
            return "failed/404";
        }
        String classTeacherName = classes.getClassTeacherName();
        String classTeacherId = classes.getClassTeacherId();
        Teacher teacher=new Teacher();
        teacher.setTeacherId(classTeacherId);
        teacher.setTeacherName(classTeacherName);
        Teacher teacher1 = teacherService.queryTeacher(teacher);
        if (teacher1==null){
            model.addAttribute("failedFlag","教师工号或姓名错误！！");
            return "failed/404";
        }
        System.out.println(classes);
        Map<String,Object> map=new HashMap<>();
        map.put("classId",classes.getClassId());
        map.put("className",classes.getClassName());
//        map.put("classTeacherId",classes.getClassTeacherId());
//        map.put("classTeacherName",classes.getClassTeacherName());
        map.put("id",classId1);

        classesService.updateClassesByMap(map);
//        classesService.updateClasses(classes);
        System.out.println(classes);
        //注意：classes也会带到page(currentPage, model,4)这个方法里面去
        return page(currentPage, model,4);
    }

    /**
     * 按班级号和班主任姓名查询班级
     * @param classesSmall
     * @param model
     * @return
     */
    @RequestMapping("/queryForClasses")
    public String queryForClasses(ClassesSmall classesSmall, Model model ){
        List<Classes> classes = classesService.queryForClasses(classesSmall);
        model.addAttribute("classId",classesSmall.getClassId());
        model.addAttribute("teacherName",classesSmall.getClassTeacherName());
        model.addAttribute("classesList",classes);
        return page(1, model,4);
    }

}
