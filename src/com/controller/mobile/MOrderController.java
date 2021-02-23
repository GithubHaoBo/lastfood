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
import java.util.Date;

@Controller
@RequestMapping("/mobile/order")
public class MOrderController {

    @Autowired
    MenuService menuService;
    @Autowired
    StoreService storeService;
    @Autowired
    OrderService orderService;
    @Autowired
    AlipayMobileService alipayMobileService;

    @RequestMapping("/addorder")
    @ResponseBody
    public String addorder(Integer m_id, HttpSession session, Model model) throws AlipayApiException {
        User user = (User) session.getAttribute("MUSER");
        if (user == null) {
            model.addAttribute("mobile_msg", "请登录！！！");
            return "mobile/login";
        }else {
            String o_no = MyUUID.getUUID9();
            Menu menu = menuService.getMenuByMid(m_id);
            Integer s_id = menu.getS_id();
            Store store = storeService.getStoreBySid(s_id);
            String o_time = FormatDate.formateDate3(new Date());

            Order order = new Order(o_no, o_time, 0, store, menu, 1, user);

            orderService.addOrder(order);
            //修改销量
            menuService.updMenuSalesByMid(order.getMenu().getM_id(), order.getM_num());
            String amount = String.valueOf(menu.getM_price());
            return alipayMobileService.aliPay(amount);
        }

    }

}
