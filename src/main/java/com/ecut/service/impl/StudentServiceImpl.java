package com.ecut.service.impl;

import com.ecut.dao.StudentMapper;
import com.ecut.pojo.Page;
import com.ecut.pojo.Student;
import com.ecut.pojo.StudentSmall;
import com.ecut.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentMapper studentMapper;
    @Override
    public int addStudent(Student student) {
        //生成学号
        String studentId = student.getStudentId();
        String[] strings=new String[]{"212","213","214","215","210","211","216","217"};
        int i= (int) (Math.random()*8);
        studentId+=strings[i];
        Integer integer = studentMapper.selectCount()+1;
        integer=(integer+100)%1000;
        studentId+=integer;
        student.setStudentId(studentId);

        //截取学号后六位做密码
        String password=studentId.substring(studentId.length()-6);
        student.setStudentPassword(password);
        return studentMapper.addStudent(student);
    }

    @Override
    public int deleteStudent(String id) {
        return studentMapper.deleteStudentById(id);
    }

    @Override
    public int updateStudent(Student student) {
        return studentMapper.updateStudent(student);
    }

    @Override
    public Page<Student> findByPage(Integer currentPage) {
        Map<String,Object> map=new HashMap<>();
        Page<Student> page =new Page<>();
        page.setCurrPage(currentPage);


        //封装总记录数
        Integer pageCount =studentMapper.selectCount();
        page.setTotalCount(pageCount);

        //总的页数
        double pc=pageCount;
        Double num=Math.ceil(pc/Page.PAGE_SIZES);
        page.setTotalPage(num.intValue());


        map.put("start",(currentPage-1)*Page.PAGE_SIZES);
        map.put("size",Page.PAGE_SIZES);

        //封装查询到的学生
        List<Student> byPage = studentMapper.findByPage(map);
        //将查到的学生封装到Page中
        page.setLists(byPage);
        return page;
    }

    @Override
    public List<Student> queryForStudent(StudentSmall studentSmall) {
        return studentMapper.selectForStudent(studentSmall);
    }

    @Override
    public Integer selectCount() {
        return studentMapper.selectCount();
    }

    @Override
    public int selectCountByClassId(String classId) {

        return studentMapper.selectCountByClassId(classId);
    }
}
