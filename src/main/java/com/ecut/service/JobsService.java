package com.ecut.service;

import com.ecut.pojo.Jobs;
import com.ecut.pojo.Lecture;

import java.util.List;

public interface JobsService {
    /**
     * 随机获取一条招聘信息
     * @return
     */
    Jobs getJobs();

    /**
     * 根据id查找招聘信息
     * @param id
     * @return
     */
    Jobs getJobsById(Integer id);

    /**
     * 随机查询五条招聘信息
     */
    List<Jobs> getJobsRandom(Integer id);
}
