package com.ecut.service.impl;

import com.ecut.dao.AdminLoginMapper;
import com.ecut.pojo.Admin;
import com.ecut.service.AdminLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminLoginServiceImpl implements AdminLoginService {
    @Autowired
    private AdminLoginMapper adminLoginMapper;
    @Override
    public boolean existsAdmin(Admin admin) {
        Admin existsAdmin = adminLoginMapper.existsAdmin(admin);
        if (existsAdmin==null){
            return false;
        }
        return true;
    }

    @Override
    public Admin getAdmin(Admin admin) {
        return adminLoginMapper.existsAdmin(admin);
    }
}
