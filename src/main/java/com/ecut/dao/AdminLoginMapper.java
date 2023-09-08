package com.ecut.dao;

import com.ecut.pojo.Admin;

public interface AdminLoginMapper {
    /**
     * 判断是否存在管理员
     * @return
     */
    Admin existsAdmin(Admin admin);

}
