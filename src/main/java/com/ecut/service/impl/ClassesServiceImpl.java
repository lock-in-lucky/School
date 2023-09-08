package com.ecut.service.impl;

import com.ecut.dao.ClassesMapper;
import com.ecut.pojo.*;
import com.ecut.service.ClassesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ClassesServiceImpl implements ClassesService {
    @Autowired
    private ClassesMapper classesMapper;

    public void setClassesMapper(ClassesMapper classesMapper) {
        this.classesMapper = classesMapper;
    }

    @Override
    public int addClasses(Classes classes) {
        return classesMapper.addClasses(classes);
    }

    @Override
    public int deleteClassesById(String id) {
        return classesMapper.deleteClassesById(id);
    }

    @Override
    public Classes queryClassesById(String id) {
//        Classes classes = classesMapper.queryClassesById(id);
        return classesMapper.queryClassesById(id);
    }

    @Override
    public int updateClasses(Classes classes) {



        return classesMapper.updateClasses(classes);
    }

    @Override
    public int updateClassesByMap(Map<String, Object> map) {

        return classesMapper.updateClassesByMap(map);
    }

    @Override
    public List<Classes> getClassessByPage() {

        return classesMapper.getClassess();
    }

    @Override
    public Page<Classes> findByPage(Integer currentPage) {
        Map<String,Object> map=new HashMap<>();
        Page<Classes> page=new Page<>();
        page.setCurrPage(currentPage);


        //封装总记录数
        Integer pageCount=classesMapper.selectCount();
        page.setTotalCount(pageCount);

        //总的页数
        double pc=pageCount;
        System.out.println(pc);
        Double num=Math.ceil(pc/Page.PAGE_SIZES);
//        System.out.println("num:"+num);
        page.setTotalPage(num.intValue());
//        System.out.println("intValue:"+num.intValue());
        map.put("start", (currentPage-1)*Page.PAGE_SIZES);
        map.put("size", Page.PAGE_SIZES);
        //封装查询到的班级
        List<Classes> Classes = classesMapper.findByPage(map);
//        for (com.ecut.pojo.Classes aClass : Classes) {
//            System.out.println(aClass);
//        }
        //将查到的班级封装到Page中
        page.setLists(Classes);
        return page;
    }

    @Override
    public Integer selectCount() {
        return classesMapper.selectCount();
    }

    @Override
    public Integer selectCount(String teacherId) {
        return classesMapper.selectCountByTeacherId(teacherId);
    }

    @Override
    public List<Classes> queryForClasses(ClassesSmall classesSmall) {
        return classesMapper.selectForClasses(classesSmall);
    }



}
