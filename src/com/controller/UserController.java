package com.controller;

import com.bean.Store;
import com.bean.User;
import com.service.UserService;
import com.util.ShiroMd5;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping("/login")
    public String login(String u_loginname, String u_password,
                        HttpSession session, Model model, HttpServletRequest req) {

        String md5pwd = ShiroMd5.md5(u_password, u_loginname);
        System.out.println(md5pwd);
        User user = userService.login(u_loginname, md5pwd);
        if (user == null) {
            model.addAttribute("message", "用户名或密码错误");
            return "forward:/front/tologin";
        }
        //登录成功需要把用户的信息放到session中
        session.setAttribute("USER", user);

        return "redirect:/showindex";
    }


    @RequestMapping("/register")
    public String register(User user){
        String pwd = user.getU_password();
        String loginname = user.getU_loginname();
        String newPwd = ShiroMd5.md5(pwd,loginname );
        user.setU_password(newPwd);

        userService.register(user);
        return "redirect:/front/tologin";
    }

    @RequestMapping("/upduser")
    public String updUser(User user,HttpSession session){
        System.out.println(user);
        userService.updUserByUid(user);
        User user1 = userService.getUserByUid(user.getU_id());
        session.setAttribute("USER",user1 );
        return "redirect:/showindex";
    }

    @RequestMapping("/checkloginandcard")
    public String checkloginandcard(String u_loginname,String u_card,Model model){
        User user = userService.getUserByLoginNameAndCard(u_loginname, u_card);
        if (user == null) {
            model.addAttribute("message", "验证失败");
            return "front/findpassword";
        }else {
            model.addAttribute("resetUser",user );
            return "front/resetpassword";
        }
    }
    @RequestMapping("/resetpwd")
    public String resetpwd(Integer u_id,String u_loginname,String pwd,Model model){

        String newpwd = ShiroMd5.md5(pwd,u_loginname );
        userService.updUserPasswordByUid(newpwd,u_id );
        model.addAttribute("message", "请重新登录");
        return "forward:/front/tologin";
    }


}
