package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class PageController {

    /**
     * 根目录定位到登录
     */
    @RequestMapping("/")
    public String showLoginPage(HttpServletRequest req) {
//        后台
//        return "loginForm";
//        前台
//        return "redirect:/showindex";
//        手机
//        return "mobile/index";

        String userAgent = req.getHeader("user-agent");
        System.out.println("【user-agent】："+userAgent);
        if (userAgent.indexOf("Android") != -1) {
//            安卓
            return "mobile/index";
        } else if ((userAgent.indexOf("iPhone") != -1) || (userAgent.indexOf("iPad") != -1)) {
            //苹果
            return "mobile/index";
        } else {
//            电脑
            return "redirect:/showindex";
        }
    }

    /**
     * 后台登录
     * @return
     */
    @RequestMapping("/after")
    public String showStorePage() {
        return "loginForm";
    }

    /**
     * 定位手机端首页
     */
    @RequestMapping("/mobile")
    public String phoneshowIndex() {
        return "mobile/index";
    }


    /**
     * 定位电脑前台首页
     */
    @RequestMapping("/front")
    public String showIndex() {
        return "redirect:/showindex";
    }

    /**
     * 进入后台系统首页
     *
     * @return
     */
    @RequestMapping("/welcome")
    public String welcome() {
        return "welcome";
    }

    /**
     * 找回密码定位到找回密码页面
     *
     * @return
     */
    @RequestMapping("/repassword")
    public String repassword() {
        return "repasswordPage";
    }

    /**
     * 注册页面
     *
     * @return
     */
    @RequestMapping("/toregist")
    public String toregist() {
        return "regist";
    }

}
