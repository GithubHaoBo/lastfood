package com.controller.mobile;

import com.bean.Menu;
import com.bean.Pinglun;
import com.bean.Store;
import com.bean.User;
import com.service.MenuService;
import com.service.PinglunService;
import com.service.StoreService;
import com.service.UserService;
import com.util.ShiroMd5;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/mobile/menu")
public class MmenuController {

    @Autowired
    MenuService menuService;
    @Autowired
    PinglunService pinglunService;
    @Autowired
    StoreService storeService;


    @RequestMapping("/findmenubymid")
    public String findmenubymid(Integer m_id,Model model){

        Menu menu = menuService.getMenuByMid(m_id);
        Integer sid = menu.getS_id();
        Store store = storeService.getStoreBySid(sid);
        menu.setStore(store);
        model.addAttribute("menus", menu);

        //获取评论
        List<Pinglun> pinglunList = pinglunService.getPinglunByMid(m_id);
        model.addAttribute("pinglist",pinglunList );

        return "mobile/showmenu";
    }

}
