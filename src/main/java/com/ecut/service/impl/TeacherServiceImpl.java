package com.ecut.service.impl;

import com.ecut.dao.TeacherMapper;
import com.ecut.pojo.Page;
import com.ecut.pojo.Teacher;
import com.ecut.pojo.TeacherSmall;
import com.ecut.service.TeacherService;
import com.ecut.utils.GetId;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class TeacherServiceImpl implements TeacherService {
//    @Autowired
    private TeacherMapper teacherMapper;



    public void setTeacherMapper(TeacherMapper teacherMapper) {
        this.teacherMapper = teacherMapper;
    }

    @Override
    public int insert(Teacher teacher) {

        //生成工号
        String teacherID=teacher.getTeacherId();//teacher.getTeacherId()获取到年份
        teacherID+= GetId.getTeacherId(teacher.getTeacherDept());
        int integer = teacherMapper.selectCount()+1;
        integer=(integer+1000)%100000;
        teacherID+=integer;
        teacher.setTeacherId(teacherID);


        //截取工号后六位作为密码
        String password=teacherID.substring(teacherID.length()-6);
        teacher.setTeacherPassword(password);
        return teacherMapper.insert(teacher);
    }

    @Override
    public List<Teacher> queryTeachers() {
        return teacherMapper.queryTeachers();
    }

    @Override
    public Teacher queryTeacher(Teacher teacher) {
        return teacherMapper.queryTeacher(teacher);
    }

    @Override
    public Teacher queryTeacherByName(String teacherName) {

        return null;
    }

    @Override
    public int deleteTeacher(String teacherId) {
        return teacherMapper.deleteTeacher(teacherId);
    }

    @Override
    public List<Teacher> queryFor(String name, String dept) {
        Map<String,String> map= new HashMap();
        map.put("name",name);
        map.put("dept",dept);
        return teacherMapper.queryFor(map);
    }

    @Override
    public Page<Teacher> findByPage(Integer currentPage) {
        Map<String,Object> map=new HashMap<>();
        Page<Teacher> page=new Page<>();
        page.setCurrPage(currentPage);


        //封装总记录数
        Integer pageCount=teacherMapper.selectCount();
        page.setTotalCount(pageCount);

        //总的页数
        double pc=pageCount;
        Double num=Math.ceil(pc/Page.PAGE_SIZES);
        page.setTotalPage(num.intValue());

        map.put("start", (currentPage-1)*Page.PAGE_SIZES);
        map.put("size", Page.PAGE_SIZES);
        //封装查询到的老师
        List<Teacher> teacherList=teacherMapper.findByPage(map);
        //将查到的老师封装到Page中
        page.setLists(teacherList);
        return page;
    }

    @Override
    public Page<Teacher> findByPage(Integer currentPage, TeacherSmall teacherSmall) {
        Map<String,Object> map=new HashMap<>();
        Page<Teacher> page=new Page<>();
        page.setCurrPage(currentPage);

        map.put("name", teacherSmall.getTeacherName());
        map.put("dept", teacherSmall.getTeacherDept());

        //封装总记录数
        Integer pageCount=teacherMapper.selectCount(map);
        page.setTotalCount(pageCount);

        //总的页数
        double pc=pageCount;
        Double num=Math.ceil(pc/Page.PAGE_SIZES);
        page.setTotalPage(num.intValue());
        map.put("start", (currentPage-1)*Page.PAGE_SIZES);
        map.put("size", Page.PAGE_SIZES);
        //封装查询到的老师
        List<Teacher> teacherList=teacherMapper.queryForByLimt(map);
        //将查到的老师封装到Page中
        page.setLists(teacherList);
        return page;
    }

    @Override
    public Integer selectCount() {
        return teacherMapper.selectCount();
    }



    @Override
    public List<Teacher> findByPageByMap(Map<String, Object> map) {
        return teacherMapper.findByPage(map);
    }

    @Override
    public int updateTeacher(Teacher teacher) {
        return teacherMapper.updateTeacher(teacher);
    }

    @Override
    public int updateTeacherNo(Teacher teacher) {
        return teacherMapper.updateTeacherNo(teacher);
    }
}
