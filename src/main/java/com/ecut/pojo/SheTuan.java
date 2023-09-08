package com.ecut.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SheTuan {
    private Integer id;
    private String shetuanName;
    private List<SheTuanActivity> sheTuanActivities;
}
