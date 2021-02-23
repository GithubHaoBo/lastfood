package com.controller;

import com.bean.*;
import com.service.MenuService;
import com.service.PinglunService;
import com.util.FormatDate;
import com.util.PageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/pinglun")
public class PinglunController {
    @Autowired
    PinglunService pinglunService;
    @Autowired
    MenuService menuService;

    @RequestMapping("/add")
    public String addPinglun(Pinglun pinglun, HttpSession session, Model model) {
        User user = (User) session.getAttribute("USER");
        if (user == null) {
            model.addAttribute("message", "请登录！！！");
            return "forward:/front/tologin";
        } else {
            pinglun.setUser(user);
            pinglun.setP_time(FormatDate.formateDate3(new Date()));
            pinglunService.addPinglun(pinglun);
            return "redirect:/showindex";
        }
    }

    @RequestMapping("/list")
    public String getAll(@RequestParam(defaultValue = "1") Integer pageIndex, HttpSession session, Model model) {
        Store store = (Store) session.getAttribute("user_session");
        List<Menu> menuList = menuService.getAllStoreMenuBySid(store.getS_id());

        List<Integer> midlist = new ArrayList();

        for(Menu menu:menuList){
            midlist.add(menu.getM_id());
        }
        System.out.println("店铺菜单集合："+midlist);

        PageModel pageModel = new PageModel();
        List<Pinglun> pinglunList = pinglunService.getPinglunByStore(pageIndex, pageModel, midlist);
        System.out.println("评论集合："+pinglunList);
        System.out.println("评论model："+pageModel);
        model.addAttribute("pinglunlist", pinglunList);
        model.addAttribute("pageModel", pageModel);
        return "pinglun/list";
    }

    //查询  对应页面请输入查找内容
    @RequestMapping("/querylist")
    public String queryList(String content, Model model,HttpSession session) {
        if (content != null) {
            content = content.trim();//去掉前后的空格
        }
        Store store = (Store) session.getAttribute("user_session");
        List<Menu> menuList = menuService.getAllStoreMenuBySid(store.getS_id());

        List<Integer> midlist = new ArrayList();

        for(Menu menu:menuList){
            midlist.add(menu.getM_id());
        }

        List<Pinglun> querylist = pinglunService.querylistByStore(midlist, content);
        model.addAttribute("pinglunlist", querylist);
        int count = querylist.size();//查询出来的数据总条数
        model.addAttribute("count", count);
        return "pinglun/list";
    }

    //查询  对应页面请输入查找内容
    @RequestMapping("/querylist2")
    public String queryList2(Model model,HttpSession session) {

        Store store = (Store) session.getAttribute("user_session");
        List<Menu> menuList = menuService.getAllStoreMenuBySid(store.getS_id());

        List<Integer> midlist = new ArrayList();

        for(Menu menu:menuList){
            midlist.add(menu.getM_id());
        }

        List<Pinglun> querylist = pinglunService.getPinglunByStore(midlist);
        model.addAttribute("pinglunlist", querylist);
        int count = querylist.size();//查询出来的数据总条数
        model.addAttribute("count", count);
        return "pinglun/list";
    }
}
