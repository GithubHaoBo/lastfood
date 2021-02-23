package com.controller.mobile;

import com.bean.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/mobile")
public class MobileController {

    @RequestMapping("/tologin")
    public String tologin() {
        return "mobile/login";
    }

    @RequestMapping("/toregist")
    public String toregist() {
        return "mobile/regist";
    }

    @RequestMapping("/toeditme")
    public String toeditme() {
        return "mobile/editme";
    }

    @RequestMapping("/tofindpassword")
    public String tofindpassword() {
        return "mobile/findpassword";
    }

    @RequestMapping("/toshopcart")
    public String toshopcart() {
        return "mobile/shopcart";
    }

    @RequestMapping("/toaboutme")
    public String toaboutme(HttpSession session, Model model) {
        User user = (User) session.getAttribute("MUSER");
        if (user == null) {
            model.addAttribute("mobile_msg", "请登录！！！");
            return "mobile/login";
        } else {
            return "mobile/aboutme";
        }

    }

    @RequestMapping("/toorder")
    public String toorder() {
        return "mobile/order";
    }


}
