package com.controller;

import com.bean.Store;
import com.service.StoreService;
import com.util.ShiroMd5;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class FindPwdController {

    @Autowired
    private StoreService storeService;

    @RequestMapping("/toFindPassword")
    public String toFindPassword(HttpSession session, Model model,
                                 Store store, String user_input_verifyCode) {

        //获取session中的验证码
        String sessionCode = session.getAttribute("code").toString();
        if (!user_input_verifyCode.equalsIgnoreCase(sessionCode)) {
            model.addAttribute("message", "验证码错误!");
            return "repasswordPage";
        } else {
            model.addAttribute("store", store);
            return "findPassword";
        }
    }

    @RequestMapping("/rePassword")
    public String rePassword(String s_loginname, String s_password) {
        //首先password进行md5加密
        String md5Pwd = ShiroMd5.md5(s_password, s_loginname);
        storeService.updStorePasswordByLoginname(md5Pwd,s_loginname);
        return "loginForm";
    }

}
