package com.ecut.service;

import com.ecut.pojo.*;

import java.util.List;

public interface StudentService {
    /**
     * 添加学生
     * @param student
     * @return
     */
    int addStudent(Student student);



    /**
     * 根据id删除学生
     * @param id
     * @return
     */
    int deleteStudent(String id);


    /**
     * 更新学生信息
     * @param student
     * @return
     */
    int updateStudent(Student student);

    /**
     * 分页查找班级
     * @param currentPage
     * @return
     */
    Page<Student> findByPage(Integer currentPage);

    /**
     * 按班级号和名字查询学生
     * @param studentSmall
     * @return
     */
    List<Student> queryForStudent(StudentSmall studentSmall);

    /**
     * 查询学生总记录数
     * @return
     */
    Integer selectCount();

    int selectCountByClassId(String classId);
}
