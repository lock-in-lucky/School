package com.ecut.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
@SuppressWarnings("all")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Teacher {
//    public final static String RUANJIAN="213";
//    public final static String XINGONG="214";
//    public final static String SHUIZIYUAN="215";
//    public final static String HEGONG="215";
//    public final static String SHUIHUAN="215";
//    public final static String SHIFAN="215";
//    public final static String TIYU="215";
//    public final static String GUOJI="215";
//    public final static String JIDIAN="215";
    private String teacherId;
    private String teacherName;
    private String teacherPassword;
    private String teacherPhone;
    private String teacherEmail;
    private String teacherDept;
    private final Integer teacherPower=2;
    private List<Course> courses;
}
