package com.ecut.service;

import com.ecut.pojo.Admin;
import org.springframework.stereotype.Service;


public interface AdminLoginService {
    /**
     * 判断是否存在管理员
     * @param admin
     * @return
     */
    boolean existsAdmin(Admin admin);

    /**
     * 返回一个Admin对象
     * @param admin
     * @return
     */
    Admin getAdmin(Admin admin);
}
