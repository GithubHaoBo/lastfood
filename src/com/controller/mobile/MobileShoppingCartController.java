package com.controller.mobile;

import com.alipay.api.AlipayApiException;
import com.bean.*;
import com.service.*;
import com.util.FormatDate;
import com.util.MyUUID;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/mobile/cart")
public class MobileShoppingCartController {

    @Autowired
    PinglunService pinglunService;
    @Autowired
    MenuService menuService;
    @Autowired
    StoreService storeService;
    @Autowired
    OrderService orderService;
    @Autowired
    AlipayMobileService alipayMobileService;

    @RequestMapping("/addtocart")
    public String addToCart(HttpSession session, Integer m_id, Model model) {

        // 通过ID查询此菜品
        Menu menu = menuService.getMenuByMid(m_id);
        ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("mobileshoppingCart");
        if (shoppingCart == null) {
            shoppingCart = new ShoppingCart();
        }

        ShoppingCartItem shoppingCartItem = new ShoppingCartItem(menu.getM_id(), menu.getM_name(), menu.getM_price(), 1);

        shoppingCart.addMenusToCart(shoppingCartItem);
        session.setAttribute("mobileshoppingCart", shoppingCart);

        /**
         * 重新回到这个餐品详情页
         *
         * 通过餐品找到商户
         * 通过餐品找到评论
         */
        Integer sid = menu.getS_id();
        Store store = storeService.getStoreBySid(sid);
        menu.setStore(store);
        model.addAttribute("menus", menu);

        //获取评论
        List<Pinglun> pinglunList = pinglunService.getPinglunByMid(m_id);
        model.addAttribute("pinglist", pinglunList);

        return "mobile/showmenu";
    }

    @RequestMapping("/delfromcart")
    public String delFromCart(HttpSession session, String menuname, String path) {

        ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("mobileshoppingCart");
        if (shoppingCart != null) {
            shoppingCart.delMenusFromCart(menuname);
        }
        session.setAttribute("mobileshoppingCart", shoppingCart);

        return "mobile/shopcart";

    }

    @RequestMapping("/clearcart")
    public String clearCart(String path, HttpSession session) {

        ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("shoppingCart");
        if (shoppingCart != null) {
            shoppingCart.clearCart();
        }
        session.setAttribute("mobileshoppingCart", shoppingCart);

        return "mobile/shopcart";
    }

    @RequestMapping("/addorder")
    public String addOrder(HttpSession session, Model model, String amount) {
        User user = (User) session.getAttribute("MUSER");

        //获取购物车
        ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("mobileshoppingCart");
        if (user != null) {

            // 查看购物车是否为空
            if (shoppingCart != null) {
                session.setAttribute("mobileamount", amount);
                //转发到添加订单页面
                return "forward:/mobile/cart/shopping";
            }else {
                return "mobile/shopcart";
            }
        }else {
            model.addAttribute("message", "请登录！！！");
            return "forward:/front/tologin";
        }
    }

    @RequestMapping("/shopping")
    @ResponseBody
    public String shopping(HttpSession session) throws AlipayApiException {
        User user = (User) session.getAttribute("MUSER");
        String amount = (String) session.getAttribute("mobileamount");

        //获取购物车
        ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("mobileshoppingCart");

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
        session.setAttribute("mobileshoppingCart", shoppingCart);
        session.setAttribute("mobileamount", "0");
        System.out.println("**************" + amount);
        return alipayMobileService.aliPay(amount);
    }



    /**
     * 未接入支付宝
     */
    /*@RequestMapping("/addorder")
    public String addOrder(HttpSession session, Model model, String amount) {
        User user = (User) session.getAttribute("MUSER");

        //获取购物车
        ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("mobileshoppingCart");
        if (user != null) {

            // 查看购物车是否为空
            if (shoppingCart != null) {

                List<Order> list = new ArrayList<Order>();

                for (Map.Entry<String, ShoppingCartItem> entry : shoppingCart.getMap().entrySet()) {

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
                session.setAttribute("mobileshoppingCart", shoppingCart);

                return "mobile/order";
            } else {
                return "mobile/shopcart";
            }
        } else {
            model.addAttribute("mobile_msg", "请登录！！！");
            return "mobile/login";
        }

    }*/


}
