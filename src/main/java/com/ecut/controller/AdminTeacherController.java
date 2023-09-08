package com.ecut.controller;

import com.ecut.pojo.Page;
import com.ecut.pojo.Teacher;
import com.ecut.pojo.TeacherSmall;
import com.ecut.service.ClassesService;
import com.ecut.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminTeacherController {

    @Autowired
    private TeacherService teacherService;
    @Autowired
    private com.ecut.service.ClassesService classesService;

    public void setTeacherService(TeacherService teacherService) {
        this.teacherService = teacherService;
    }

    /**
     * 添加教师
     * @return
     */
    @RequestMapping("/add")
    public String addTeacher(Teacher teacher,Model model){
        teacherService.insert(teacher);
        Integer integer = teacherService.selectCount();
        double i=integer;
        Double v = Math.ceil(i / Page.PAGE_SIZES);
        System.out.println("v:"+v.intValue());
        return pege(v.intValue(), model,1);
    }

    /**
     * 查询全部教师（已弃用）
     * @param model
     * @return
     */
    @RequestMapping("/query")
    public String queryTeacher(Model model) {
        List<Teacher> teachers =teacherService.queryTeachers();
        System.out.println(teachers);
        model.addAttribute("teachers", teachers);
        return "admin/index";
    }

    /**
     * 根据id删除教师
     * @param teacherId
     * @return
     */
    @RequestMapping("/delete/{teacherId}/{currentPage}")
    public String deleteTeacher(@PathVariable("teacherId") String teacherId,@PathVariable("currentPage") Integer currentPage,Model model) {

        Integer integer = classesService.selectCount(teacherId);

        if (integer>0){
            model.addAttribute("failedFlag","该教师已经带班，不能删除！！");
            return "failed/404";
        }
        teacherService.deleteTeacher(teacherId);
        System.out.println("deleteTeacher执行");
        return pege(currentPage, model,1);
    }
    /**
     * 更新教师
     * @param teacher
     * @return
     */
    @RequestMapping("/update/{currentPage}")
    public String updateTeacher(Teacher teacher,Model model,@PathVariable Integer currentPage) {
        System.out.println(teacher);
        teacherService.updateTeacherNo(teacher);
        return pege(currentPage, model,1);
    }

    /**
     * 按姓名和系部查询
     * @param teacherSmall
     * @param model
     * @return
     */
    @RequestMapping("/queryFor")
    public String queryFor(TeacherSmall teacherSmall,Model model ){
        List<Teacher> teachers = teacherService.queryFor(teacherSmall.getTeacherName(), teacherSmall.getTeacherDept());
        model.addAttribute("teacherName",teacherSmall.getTeacherName());
        model.addAttribute("pageTeachers",teachers);
        return pege(1, model,1);
    }

    /**
     * 分页查询教师
     * @param currentPage
     * @param model
     * @return
     */
    @RequestMapping("/page/{num}")
    public String pege(@RequestParam(value = "currentPage",defaultValue="1",required=false) Integer currentPage, Model model,@PathVariable("num") Integer num){
        List<Teacher> teachers = (List<Teacher>) model.getAttribute("pageTeachers");

        Page<Teacher> byPage = teacherService.findByPage(currentPage);
        if (teachers!=null){
            byPage.setLists(teachers);
            model.addAttribute("flag", 1);
        }
        model.addAttribute("byPage",byPage);
        model.addAttribute("titleFlag", num);

        return "admin/home";
    }






    //下面为home页面


}
