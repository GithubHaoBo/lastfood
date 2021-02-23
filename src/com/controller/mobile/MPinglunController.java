package com.controller.mobile;

import com.bean.Menu;
import com.bean.Pinglun;
import com.bean.Store;
import com.bean.User;
import com.service.MenuService;
import com.service.PinglunService;
import com.service.StoreService;
import com.util.FormatDate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/mobile/pinglun")
public class MPinglunController {

    @Autowired
    PinglunService pinglunService;
    @Autowired
    MenuService menuService;
    @Autowired
    StoreService storeService;

    @RequestMapping("/add")
    public String addPinglun(Pinglun pinglun, HttpSession session, Model model) {
        User user = (User) session.getAttribute("MUSER");
        if (user == null) {
            model.addAttribute("mobile_msg", "请登录！！！");
            return "mobile/login";
        } else {
            pinglun.setUser(user);
            pinglun.setP_time(FormatDate.formateDate3(new Date()));
            pinglunService.addPinglun(pinglun);


            /**
             * 重新回到这个餐品详情页
             *
             * 通过餐品找到商户
             * 通过餐品找到评论
             */
            Integer m_id = Integer.valueOf(pinglun.getM_id());
            Menu menu = menuService.getMenuByMid(m_id);
            Integer sid = menu.getS_id();
            Store store = storeService.getStoreBySid(sid);
            menu.setStore(store);
            model.addAttribute("menus", menu);

            //获取评论
            List<Pinglun> pinglunList = pinglunService.getPinglunByMid(m_id);
            model.addAttribute("pinglist", pinglunList);

            return "mobile/showmenu";
        }
    }

}
