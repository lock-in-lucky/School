package com.ecut.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.sql.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SheTuanActivity {
    private Integer id;
    private String shetuanName;
    private Date activityTime;
    private String activityAddress;
    private String activityTheme;
    private String activityContent;
}
