package com.baizhi.controller;

import com.baizhi.entity.Admin;
import com.baizhi.service.AdminService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@RequestMapping("/admin")
@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;

    @RequestMapping("/login")
    public String longin(Admin a, HttpSession session,String enCode){
        Admin ad = adminService.longin(a);
        String vrifyCode= (String) session.getAttribute("vrifyCode");
        if(vrifyCode.equalsIgnoreCase(enCode)){
            if(ad!=null){
                session.setAttribute("admin",ad);
                return "main/main";
            }
            return "login";
        }
        return "login";
    }
}














   /* @RequestMapping("/getUserAll")
    @ResponseBody
    public String getUserAll(Model model) {
        List<User> list = userservice.getUserAll();

        model.addAttribute("list", list);
        return "index";
    }

   *//* @RequestMapping("/getUserAll")
    @ResponseBody
    public List<User> getUserAll() {

        return userservice.getUserAll();
    }*//*
}*/