package com.controller;

import com.bean.Menu;
import com.bean.Pinglun;
import com.bean.Store;
import com.service.StoreService;
import com.util.ShiroMd5;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/store")
public class StoreController {

    @Autowired
    StoreService storeService;

    @RequestMapping("/toedit")
    public String toedit(HttpSession session,Model model){
        Store store = (Store) session.getAttribute("user_session");
        Store store1 = storeService.getStoreBySid(store.getS_id());
        model.addAttribute("store", store1);
        return "store/edit";
    }

    @RequestMapping("/edit")
    public String edit(HttpSession session,Model model,Store store){

        storeService.updStoreBySid(store);

        Store newstore = storeService.getStoreBySid(store.getS_id());
        session.setAttribute("user_session", newstore);

        return "/welcome";
    }

}
