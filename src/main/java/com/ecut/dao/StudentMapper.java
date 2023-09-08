package com.ecut.dao;

import com.ecut.pojo.Classes;
import com.ecut.pojo.ClassesSmall;
import com.ecut.pojo.Student;
import com.ecut.pojo.StudentSmall;

import java.util.List;
import java.util.Map;

public interface StudentMapper {
    /**
     * 插入一位学生
     * @param student
     * @return
     */
    int addStudent(Student student);

    /**
     * 根据id删除学生
     * @param id
     * @return
     */
    int deleteStudentById(String id);

    /**
     * 修改学生信息
     * @param student
     * @return
     */
    int updateStudent(Student student);


    /**
     * 分页查询学生
     * @param map
     * @return
     */
    List<Student> findByPage(Map<String,Object> map);

    /**
     * 查询总记录数
     * @return
     */
    Integer selectCount();

    Integer selectCountByClassId(String classId);

    /**
     * 按班级号和名字查询学生
     * @param studentSmall
     * @return
     */
    List<Student> selectForStudent(StudentSmall studentSmall);
}
