package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class ExitController {

    @RequestMapping("/exit")
    public String exit(HttpSession session) {

        session.removeAttribute("user_session");

        return "loginForm";
    }

    @RequestMapping("/user/exit")
    public String userexit(HttpSession session) {

        session.removeAttribute("USER");

        return "redirect:/showindex";
    }

}
