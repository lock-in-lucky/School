package com.ecut.dao;

import com.ecut.pojo.SheTuanActivity;

import java.util.List;

public interface SheTuanActivityMapper {

    /**
     * 随机查询一个社团活动
     * @return
     */
    SheTuanActivity getActivity();


    /**
     * 查询所有将要举办的活动
     * @return
     */
    List<SheTuanActivity> getActivityByTime();

    /**
     * 根据id获取应该社团活动
     */
    SheTuanActivity getActivityById(Integer id);


}
