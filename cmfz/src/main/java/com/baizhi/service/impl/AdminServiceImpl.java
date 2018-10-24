package com.baizhi.service.impl;

import com.baizhi.dao.AdminDao;
import com.baizhi.entity.Admin;
import com.baizhi.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminDao adminDao;
    @Override
    public Admin longin(Admin a) {
        System.out.println("====================================================");
        System.out.println("DAO"+adminDao);
        System.out.println(a);
//        return adminDao.selectOn(a);
        System.out.println("++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
        Admin ad = adminDao.selectOn(a);
        System.out.println("++++++++++++++++++++++++++++++++++++++++++++++++++++++++");

        System.out.println(ad);
        return ad;
    }
}
