package com.ecut.dao;

import com.ecut.pojo.Teacher;

import java.util.List;
import java.util.Map;

public interface TeacherMapper {
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
     * 删除一位学生
     * @param teacherId
     * @return
     */
    int deleteTeacher(String teacherId);

    /**
     * 按姓名和系部查询
     * @return
     */
    List<Teacher> queryFor(Map map);
    /**
     * 按姓名和系部查询
     * @return
     */
    List<Teacher> queryForByLimt(Map map);

    /**
     * 查询教师总记录数
     * @return
     */
    Integer selectCount();

    /**
     * 按姓名和系部查询教师总记录数
     * @return
     */
    Integer selectCount(Map map);



    /**
     * 分页查询老师
     * @param map
     * @return
     */
    List<Teacher> findByPage(Map<String, Object> map);

    /**
     * 更新老师信息
     * @param teacher
     * @return
     */
    int updateTeacher(Teacher teacher);
    int updateTeacherNo(Teacher teacher);
}
