package com.ecut.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Jobs {
    private Integer id;
    private String jobsUnit;
    private String jobsPost;
    private String jobsEdu;
    private String jobsAddress;
    private String jobsDescribe;
}
