package com.ecut.service;

import com.ecut.pojo.*;

import java.util.List;
import java.util.Map;

public interface ClassesService {
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

    int updateClassesByMap( Map<String,Object> map);


    /**
     * 查询全部班级
     * @return
     */
    List<Classes> getClassessByPage();
    /**
     * 分页查找班级
     * @param currentPage
     * @return
     */
    Page<Classes> findByPage(Integer currentPage);

    /**
     * 查询班级总记录数
     * @return
     */
    Integer selectCount();

    Integer selectCount(String teacherId);
    /**
     * 按班级号和班主任名字查询班级
     * @param classesSmall
     * @return
     */
    List<Classes> queryForClasses(ClassesSmall classesSmall);



}
