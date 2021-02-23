package com.controller.mobile;

import com.bean.User;
import com.service.UserService;
import com.util.ShiroMd5;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/mobile/user")
public class MUserController {

    @Autowired
    UserService userService;

    @RequestMapping("/login")
    public String login(String u_loginname, String u_password,
                        HttpSession session, Model model, HttpServletRequest req) {

        String md5pwd = ShiroMd5.md5(u_password, u_loginname);
        System.out.println(md5pwd);
        User user = userService.login(u_loginname, md5pwd);
        if (user == null) {
            model.addAttribute("mobile_msg", "用户名或密码错误");
            return "forward:/mobile/tologin";
        }
        //登录成功需要把用户的信息放到session中
        session.setAttribute("MUSER", user);

        return "mobile/aboutme";
    }

    @RequestMapping("/exit")
    public String userexit(HttpSession session) {

        session.removeAttribute("MUSER");

        return "mobile/index";
    }

    @RequestMapping("/register")
    public String register(User user){
        String pwd = user.getU_password();
        String loginname = user.getU_loginname();
        String newPwd = ShiroMd5.md5(pwd,loginname );
        user.setU_password(newPwd);

        userService.register(user);
        return "mobile/login";
    }

    @RequestMapping("/upduser")
    public String updUser(User user,HttpSession session){
        System.out.println(user);
        userService.updUserByUid(user);
        User user1 = userService.getUserByUid(user.getU_id());
        session.setAttribute("MUSER",user1 );
        return "mobile/aboutme";
    }

    @RequestMapping("/checkloginandcard")
    public String checkloginandcard(String u_loginname,String u_card,Model model){
        User user = userService.getUserByLoginNameAndCard(u_loginname, u_card);
        if (user == null) {
            model.addAttribute("mobile_msg", "验证失败");
            return "mobile/findpassword";
        }else {
            model.addAttribute("resetMUser",user );
            return "mobile/resetpassword";
        }
    }
    @RequestMapping("/resetpwd")
    public String resetpwd(Integer u_id,String u_loginname,String pwd,Model model){


        System.out.println("**************"+u_id+"+"+u_loginname+"+"+pwd);
        String newpwd = ShiroMd5.md5(pwd,u_loginname );
        userService.updUserPasswordByUid(newpwd,u_id );
        model.addAttribute("mobile_msg", "请重新登录");
//        session.removeAttribute("MUSER");
        return "mobile/login";
    }


}
