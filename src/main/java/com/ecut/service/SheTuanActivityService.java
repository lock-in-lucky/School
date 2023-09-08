package com.ecut.service;

import com.ecut.pojo.SheTuanActivity;

import java.util.List;

public interface SheTuanActivityService {
    /**
     * 随机查询一个社团活动
     * @return
     */
    SheTuanActivity getActivity();

    /**
     * 根据id获取应该社团活动
     */
    SheTuanActivity getActivityById(Integer id);
    /**
     * 查询所有将要举办的活动,但是不包含为id的活动
     * @return
     */
    List<SheTuanActivity> getActivityByTime(Integer id);

}
