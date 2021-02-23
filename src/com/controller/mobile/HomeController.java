package com.controller.mobile;

import com.bean.Menu;
import com.bean.Msg;
import com.bean.Order;
import com.bean.User;
import com.service.MenuService;
import com.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/mobile")
public class HomeController {

    @Autowired
    MenuService menuService;
    @Autowired
    OrderService orderService;

    @RequestMapping(value = "/home",produces = "application/json;charset=utf-8")
    @ResponseBody
    public Msg gethome(){
        //        菜单列表
        List<Menu> allStoreMenu = menuService.getAllStoreMenu();
        System.out.println("************"+allStoreMenu);
        return Msg.success().add("menulist",allStoreMenu );
    }


    @RequestMapping(value = "/findmenu",produces = "application/json;charset=utf-8")
    @ResponseBody
    public Msg findmenu(String find_content){
//        查询菜品
        List<Menu> allStoreMenu = menuService.getAllStoreMenuByName(find_content);
        return Msg.success().add("menulist",allStoreMenu );
    }

    @RequestMapping(value = "/orderlist",produces = "application/json;charset=utf-8")
    @ResponseBody
    public Msg orderlist(HttpSession session){
        User user = (User) session.getAttribute("MUSER");
//        查询该用户的订单
        List<Order> orderList = orderService.getAllByUid(user.getU_id());
        return Msg.success().add("orderlist",orderList );
    }

    @RequestMapping(value = "/findorder",produces = "application/json;charset=utf-8")
    @ResponseBody
    public Msg findorder(String find_content,HttpSession session){
        if (find_content != null) {
            find_content = find_content.trim();//去掉前后的空格
        }
//        System.out.println("+++++++++++++"+find_content);
        User user = (User) session.getAttribute("MUSER");
//        查询订单
        List<Order> querylist = orderService.userqueryList(find_content,user.getU_id());
//        System.out.println(querylist);
        return Msg.success().add("orderlist",querylist );
    }

}
