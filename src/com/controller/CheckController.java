package com.controller;

import com.bean.Store;
import com.bean.User;
import com.service.StoreService;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CheckController {

    @Autowired
    private StoreService storeService;
    @Autowired
    UserService userService;

    /**
     * 后台
     * @param loginname
     * @return
     */
    @RequestMapping(value = "/checkLoginName", produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String checkLoginName(String loginname) {
        //根据loginname 数据库是否存在
        String message = "";
        Store store = storeService.getStoreByLoginname(loginname);
        if (store == null) {
            message = "此登录名并不在本系统，请重新输入";
        }
        return message;
    }

    @RequestMapping(value = "/checkUsername", produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String checkUsername(String loginname, String username) {
        String message = "";
        Store store = storeService.getStoreByLoginnameAndFullname(loginname,username );
        if (store == null) {
            message = "此用户名在本系统并不匹配，请重新输入";
        }
        return message;
    }

    @RequestMapping(value = "/check_Register_loginname", produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String checkRegisterloginname(String loginname) {
        //根据loginname 数据库是否存在
        String message = "";
        Store store = storeService.getStoreByLoginname(loginname);
        if (store != null) {
            message = "此登录名已被注册";
        }
        return message;
    }

    /**
     * 前台
     */
    @RequestMapping(value = "/check_reg_username", produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String check_reg_username(String loginname) {
        //根据loginname 数据库是否存在
        String message = "";
        User user = userService.getUserByLoginname(loginname);
        System.out.println("======="+user);
        if (user != null) {
            message = "此登录名已被注册";
        }
        return message;
    }

}
