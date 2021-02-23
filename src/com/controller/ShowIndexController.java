package com.controller;

import com.bean.Menu;
import com.bean.Notice;
import com.bean.Store;
import com.service.MenuService;
import com.service.NoticeService;
import com.service.StoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class ShowIndexController {

    @Autowired
    MenuService menuService;
    @Autowired
    NoticeService noticeService;
    @Autowired
    StoreService storeService;

    //首页
    @RequestMapping("/showindex")
    public String showlist(Model model){
//        菜单列表
        List<Menu> allStoreMenu = menuService.getAllStoreMenu();
        model.addAttribute("allmenu", allStoreMenu);
//        公告列表
        List<Notice> allStoreNotic = noticeService.getAllStoreNotic();
        model.addAttribute("allnotice",allStoreNotic );
//        热销排行
        List<Menu> allStoreMenuOrderBySales = menuService.getAllStoreMenuOrderBySales();
        model.addAttribute("topmenu",allStoreMenuOrderBySales );
        return "front/index";
    }

    //根据菜名查找
    @RequestMapping("/showindexbyname")
    public String showlistbyname(String m_name,Model model){
//        菜单列表
        List<Menu> allStoreMenu = menuService.getAllStoreMenuByName(m_name);
        model.addAttribute("allmenu", allStoreMenu);
//        公告列表
        List<Notice> allStoreNotic = noticeService.getAllStoreNotic();
        model.addAttribute("allnotice",allStoreNotic );
//        热销排行
        List<Menu> allStoreMenuOrderBySales = menuService.getAllStoreMenuOrderBySales();
        model.addAttribute("topmenu",allStoreMenuOrderBySales );
        return "front/index";
    }
    //根据店铺名查找，展示店铺
    @RequestMapping("/showindexbystore")
    public String showindexbystore(String s_shopname,Model model){
//        菜单列表
        List<Store> allStore = storeService.getStoreByShopName(s_shopname);
        model.addAttribute("allstore", allStore);
//        公告列表
        List<Notice> allStoreNotic = noticeService.getAllStoreNotic();
        model.addAttribute("allnotice",allStoreNotic );
//        热销排行
        List<Menu> allStoreMenuOrderBySales = menuService.getAllStoreMenuOrderBySales();
        model.addAttribute("topmenu",allStoreMenuOrderBySales );
        return "front/storelist";
    }

    //根据店铺ID查找，展示店铺菜品
    @RequestMapping("/showindexmenubystore")
    public String showindexmenubystore(Integer s_id,Model model){
//        菜单列表
        List<Menu> allStoreMenu = menuService.getAllStoreMenuBySid(s_id);
        model.addAttribute("allmenu", allStoreMenu);
//        公告列表
        List<Notice> allStoreNotic = noticeService.getAllStoreNotic();
        model.addAttribute("allnotice",allStoreNotic );
//        热销排行
        List<Menu> allStoreMenuOrderBySales = menuService.getAllStoreMenuOrderBySales();
        model.addAttribute("topmenu",allStoreMenuOrderBySales );
        return "front/index";
    }


}
