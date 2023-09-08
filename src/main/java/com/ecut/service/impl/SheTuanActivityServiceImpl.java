package com.ecut.service.impl;

import com.ecut.dao.SheTuanActivityMapper;
import com.ecut.pojo.SheTuanActivity;
import com.ecut.service.SheTuanActivityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SheTuanActivityServiceImpl implements SheTuanActivityService {
    @Autowired
    private SheTuanActivityMapper sheTuanActivityMapper;
    @Override
    public SheTuanActivity getActivity() {
        return sheTuanActivityMapper.getActivity();
    }

    @Override
    public SheTuanActivity getActivityById(Integer id) {
        return sheTuanActivityMapper.getActivityById(id);
    }

    @Override
    public List<SheTuanActivity> getActivityByTime(Integer id) {

        List<SheTuanActivity> activityByTime = sheTuanActivityMapper.getActivityByTime();

        for (int i = 0; i < activityByTime.size(); i++) {
            if (activityByTime.get(i).getId().intValue()==id.intValue()){

                activityByTime.remove(i);
            }
        }
        return activityByTime;
    }
}
