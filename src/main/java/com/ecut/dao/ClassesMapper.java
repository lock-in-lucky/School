package com.ecut.dao;

import com.ecut.pojo.Classes;
import com.ecut.pojo.ClassesSmall;
import com.ecut.pojo.Teacher;

import java.util.List;
import java.util.Map;

public interface ClassesMapper {
    /**
     * 添加班级
     * @return
     */
    int addClasses(Classes classes);

    /**
     * 根据班级号删除班级
     * @param id
     * @return
     */
    int deleteClassesById(String id);

    Classes queryClassesById(String id);
    /**
     * 更改班级信息
     * @param classes
     * @return
     */
    int updateClasses(Classes classes);
    int updateClassesByMap(Map<String,Object> map);

    /**
     * 查询全部班级
     * @return
     */
    List<Classes> getClassess();

    /**
     * 查询总记录数
     * @return
     */
    int selectCount();
    int selectCountByTeacherId(String teacherId);

    /**
     * 分页查询班级
     * @param map
     * @return
     */
    List<Classes> findByPage(Map<String, Object> map);

    /**
     * 按班级号和班主任名字查询班级
     * @param classesSmall
     * @return
     */
    List<Classes> selectForClasses(ClassesSmall classesSmall);
}
