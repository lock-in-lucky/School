package com.ecut.service.impl;

import com.ecut.dao.JobsMapper;
import com.ecut.pojo.Jobs;
import com.ecut.pojo.Lecture;
import com.ecut.service.JobsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JobsServiceImpl implements JobsService {
    @Autowired
    private JobsMapper jobsMapper;


    @Override
    public Jobs getJobs() {
        return jobsMapper.getJobs();
    }

    @Override
    public Jobs getJobsById(Integer id) {
        return jobsMapper.getJobsById(id);
    }

    @Override
    public List<Jobs> getJobsRandom(Integer id) {
        List<Jobs> jobsRandom = jobsMapper.getJobsRandom();
        for (int i = 0; i < jobsRandom.size(); i++) {
            if (jobsRandom.get(i).getId().intValue()==id.intValue()){
                jobsRandom.remove(i);
            }
        }
        return jobsRandom;
    }
}
