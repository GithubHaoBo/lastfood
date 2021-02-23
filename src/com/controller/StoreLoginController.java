package com.controller;

import com.bean.Store;
import com.service.StoreService;
import com.util.ShiroMd5;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class StoreLoginController {

    @Autowired
    StoreService storeService;

    @RequestMapping("/login")
    public String login(String s_loginname, String s_password, String store_input_verifyCode,
                        HttpSession session, Model model, HttpServletRequest req) {
        //获取session中的验证码
        String sessionCode = session.getAttribute("code").toString();
        if (!store_input_verifyCode.equalsIgnoreCase(sessionCode)) {
            model.addAttribute("message", "验证码错误!");
            return "forward:/";
        }

        //因为注册的时候 采用的是 shiro MD5进行的加密，登录验证密码也要采用相同的加密方式才可以
        String md5pwd = ShiroMd5.md5(s_password, s_loginname);
        System.out.println(md5pwd);
        Store store = storeService.login(s_loginname, md5pwd);
        if (store == null) {
            model.addAttribute("message", "用户名密码错误");
            return "forward:/";
        }
        //登录成功需要把用户的信息放到session中
        session.setAttribute("user_session", store);
        return "index";
    }

    @RequestMapping("/register")
    public String register(Store store){
        String pwd = store.getS_password();
        String loginname = store.getS_loginname();
        String newPwd = ShiroMd5.md5(pwd,loginname );
        store.setS_password(newPwd);
        storeService.register(store);
        return "loginForm";
    }
}
