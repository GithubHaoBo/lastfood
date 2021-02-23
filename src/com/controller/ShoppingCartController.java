package com.controller;

import com.alipay.api.AlipayApiException;
import com.bean.*;
import com.service.AlipayService;
import com.service.MenuService;
import com.service.OrderService;
import com.service.StoreService;
import com.util.FormatDate;
import com.util.MyUUID;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/cart")
public class ShoppingCartController {

    @Autowired
    MenuService menuService;
    @Autowired
    StoreService storeService;
    @Autowired
    OrderService orderService;
    @Autowired
    AlipayService alipayService;

    @RequestMapping("/addtocart")
    public String addToCart(HttpSession session, Integer m_id) {

        // 通过ID查询此菜品
        Menu menu = menuService.getMenuByMid(m_id);
        ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("shoppingCart");
        if (shoppingCart == null) {
            shoppingCart = new ShoppingCart();
        }

        ShoppingCartItem shoppingCartItem = new ShoppingCartItem(menu.getM_id(), menu.getM_name(), menu.getM_price(), 1);

        shoppingCart.addMenusToCart(shoppingCartItem);
        session.setAttribute("shoppingCart", shoppingCart);

        return "redirect:/showindex";
    }

    @RequestMapping("/delfromcart")
    public String delFromCart(HttpSession session, String menuname, String path) {

        ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("shoppingCart");
        if (shoppingCart != null) {
            shoppingCart.delMenusFromCart(menuname);
        }
        session.setAttribute("shoppingCart", shoppingCart);
        if (path != null) {
            return "redirect:/showindex";
        } else {
            return "redirect:/front/toshoppingcar";
        }
    }

    @RequestMapping("/clearcart")
    public String clearCart(String path, HttpSession session) {

        ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("shoppingCart");
        if (shoppingCart != null) {
            shoppingCart.clearCart();
        }
        session.setAttribute("shoppingCart", shoppingCart);
        if (path != null) {
            return "redirect:/showindex";
        } else {
            return "redirect:/front/toshoppingcar";
        }
    }

    @RequestMapping("/addorder")
    public String addOrder(HttpSession session, Model model, String amount) {
        User user = (User) session.getAttribute("USER");

        //获取购物车
        ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("shoppingCart");
        if (user != null) {

            // 查看购物车是否为空
            if (shoppingCart != null) {
                session.setAttribute("amount", amount);
                return "forward:/cart/shopping";
            }else {
                return "redirect:/showindex";
            }
        }else {
            model.addAttribute("message", "请登录！！！");
            return "forward:/front/tologin";
        }

    }

    @RequestMapping("/shopping")
    @ResponseBody
    public String shopping(HttpSession session) throws AlipayApiException {
        User user = (User) session.getAttribute("USER");
        String amount = (String) session.getAttribute("amount");

        //获取购物车
        ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("shoppingCart");

        List<Order> list = new ArrayList<Order>();

        for (Map.Entry<String, ShoppingCartItem> entry : shoppingCart.getMap().entrySet()) {
//            订单号
            String o_no = MyUUID.getUUID9();
            Integer u_id = user.getU_id();
            Integer m_id = entry.getValue().getMenuid();
            Menu menu = menuService.getMenuByMid(m_id);
            Integer s_id = menu.getS_id();
            Store store = storeService.getStoreBySid(s_id);
            Integer m_num = entry.getValue().getSums();
            String o_time = FormatDate.formateDate3(new Date());
            Order order = new Order(o_no, o_time, 0, store, menu, m_num, user);
            System.out.println(order);
            list.add(order);
        }

        for (Order order : list) {
            //添加订单
            orderService.addOrder(order);
            //修改销量
            menuService.updMenuSalesByMid(order.getMenu().getM_id(), order.getM_num());
            //
        }
        // 清空购物车
        shoppingCart.clearCart();
        session.setAttribute("shoppingCart", shoppingCart);
        session.setAttribute("amount","0" );
        System.out.println("**************" + amount);
        return alipayService.aliPay(amount);

    }

}
