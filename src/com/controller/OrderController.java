package com.controller;

import com.bean.*;
import com.service.OrderService;
import com.util.PageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/order")
public class OrderController {

    @Autowired
    OrderService orderService;

    @RequestMapping("/list")
    public String getAll(@RequestParam(defaultValue = "1") Integer pageIndex, HttpSession session, Model model){

        PageModel pageModel = new PageModel();

        Store store = (Store) session.getAttribute("user_session");
        List<Order> list = orderService.getAllBySid(pageIndex, pageModel,store.getS_id());
        System.out.println(list);
        model.addAttribute("orderlist", list);
        model.addAttribute("pageModel", pageModel);
        return "order/list";
    }

    //查询  对应页面请输入查找内容
    @RequestMapping("/querylist")
    public String queryList(String content, Model model,HttpSession session) {
        if (content != null) {
            content = content.trim();//去掉前后的空格
        }

        Store store = (Store) session.getAttribute("user_session");
        System.out.println("++++++++"+store.getS_id());
        List<Order> querylist = orderService.queryList(content,store.getS_id());
        model.addAttribute("orderlist", querylist);
        int count = querylist.size();//查询出来的数据总条数
        model.addAttribute("count", count);
        return "order/list";
    }

    @RequestMapping("/edit")
    public void editState(Integer o_id){
        System.out.println("==============");
        orderService.updOrderStatusByOid(o_id);
    }

    @RequestMapping("/userquerylist")
    public String userqueryList(String content, Model model,HttpSession session) {
        if (content != null) {
            content = content.trim();//去掉前后的空格
        }

        User user = (User) session.getAttribute("USER");
        List<Order> querylist = orderService.userqueryList(content,user.getU_id());
        model.addAttribute("orderlist", querylist);
        return "front/order";
    }

}
