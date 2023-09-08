package com.ecut.service;

import com.ecut.pojo.Page;
import com.ecut.pojo.Teacher;
import com.ecut.pojo.TeacherSmall;

import java.util.List;
import java.util.Map;

public interface TeacherService {
    /**
     * 添加老师
     * @param teacher
     * @return
     */
    int insert(Teacher teacher);


    /**
     * 查询所有老师
     * @return
     */
    List<Teacher> queryTeachers();

    Teacher queryTeacher(Teacher teacher);
    Teacher queryTeacherByName(String teacherName);


    /**
     * 删除一位老师
     * @return
     * @param teacherId
     */
    int deleteTeacher(String teacherId);

    /**
     * 按姓名和系部查询
     * @param name
     * @param dept
     * @return
     */
    List<Teacher> queryFor(String name, String dept);

    /**
     * 分页查找老师
     * @param currentPage
     * @return
     */
    Page<Teacher> findByPage(Integer currentPage);

    /**
     * 按姓名和系部分页查找老师
     * @param currentPage
     * @return
     */
    Page<Teacher> findByPage(Integer currentPage, TeacherSmall teacherSmall);



    /**
     * 查询教师总记录数
     * @return
     */
    Integer selectCount();

    /**
     * 分页查询老师
     * @param map
     * @return
     */
    List<Teacher> findByPageByMap(Map<String, Object> map);

    /**
     * 更新老师信息
     * @param teacher
     * @return
     */
    int updateTeacher(Teacher teacher);

    int updateTeacherNo(Teacher teacher);
}
