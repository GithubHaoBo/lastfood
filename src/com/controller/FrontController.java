package com.controller;

import com.bean.Order;
import com.bean.User;
import com.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/front")
public class FrontController {

    @Autowired
    OrderService orderService;

    @RequestMapping("/totop")
    public String totop() {
        return "front/top";
    }

    @RequestMapping("/toshoppingcar")
    public String toshoppingcar() {
        return "front/shoppingcar";
    }

    @RequestMapping("/toorder")
    public String toorder(Model model, HttpSession session) {
        User user = (User) session.getAttribute("USER");
        if (user == null) {
            model.addAttribute("message", "请登录！！！");
            return "forward:/front/tologin";
        } else {
            List<Order> orderList = orderService.getAllByUid(user.getU_id());
            model.addAttribute("orderlist", orderList);
            return "front/order";
        }
    }

    @RequestMapping("/tocenter")
    public String tocenter() {
        return "front/center";
    }

    @RequestMapping("/tocarry")
    public String tocarry() {
        return "front/carry";
    }

    @RequestMapping("/toour")
    public String toour() {
        return "front/our";
    }

    @RequestMapping("/tologin")
    public String tologin() {
        return "front/login";
    }

    @RequestMapping("/toreg")
    public String toreg() {
        return "front/reg";
    }

    @RequestMapping("/tofind")
    public String tofind() {
        return "front/find";
    }

    @RequestMapping("/tofindpassword")
    public String tofindpassword() {
        return "front/findpassword";
    }
}
