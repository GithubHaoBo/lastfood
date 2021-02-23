package com.controller;

import com.bean.*;
import com.service.CategoryService;
import com.service.MenuService;
import com.service.PinglunService;
import com.service.StoreService;
import com.util.PageModel;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import java.util.List;

@Controller
@RequestMapping("/menu")
public class MenuController {

    @Autowired
    MenuService menuService;
    @Autowired
    CategoryService categoryService;
    @Autowired
    StoreService storeService;
    @Autowired
    PinglunService pinglunService;

    @RequestMapping("/list")
    public String getAll(@RequestParam(defaultValue = "1") Integer pageIndex, HttpSession session, Model model){

        PageModel pageModel = new PageModel();

        Store store = (Store) session.getAttribute("user_session");
        List<Menu> list = menuService.getAllBySid(pageIndex, pageModel,store.getS_id());

        System.out.println(list);

        model.addAttribute("menulist", list);
        model.addAttribute("pageModel", pageModel);
        return "menu/list";
    }

    //查询  对应页面请输入查找内容
    @RequestMapping("/querylist")
    public String queryList(String content, Model model,HttpSession session) {
        if (content != null) {
            content = content.trim();//去掉前后的空格
        }

        Store store = (Store) session.getAttribute("user_session");
        List<Menu> querylist = menuService.queryList(content,store.getS_id());
        model.addAttribute("menulist", querylist);
        int count = querylist.size();//查询出来的数据总条数
        model.addAttribute("count", count);
        return "menu/list";
    }

    @RequestMapping("/toadd")
    public String toadd(Model model,HttpSession session) {

        Store store = (Store) session.getAttribute("user_session");
        List<Category> list = categoryService.getAllBySid(store.getS_id());
        model.addAttribute("categorylist", list);
        return "menu/add";
    }

    /*上传*/
    @RequestMapping("/add")
    public String add(HttpSession session, HttpServletRequest req, Menu menu) throws Exception, IOException {
//        String path  = req.getServletContext().getRealPath("/WEB-INF/files");
        String path  = req.getServletContext().getRealPath("/imgmenu");
        System.out.println(menu);
        MultipartFile multFile =  menu.getFile();
        String filename = multFile.getOriginalFilename();//得到文件名
        boolean b = StringUtils.isNotBlank(filename);
        System.out.println("布尔值:是不空的吗==>"+b);
        if (b==true){
            File f = new File(path,filename);
            multFile.transferTo(f);//把上传的文件 写入 指定的文件位置
            //还要把上传相关信息入库
            menu.setM_imgname(filename);
        }else {
            filename = "imgnull.jpg";
            menu.setM_imgname(filename);
        }

        //还要把上传相关信息入库
        Store store = (Store) session.getAttribute("user_session");
        menu.setS_id(store.getS_id());
        menu.setM_sales(0);

        menuService.addMenu(menu);

        return "redirect:/menu/list";
    }


    @RequestMapping("/download")
    public ResponseEntity<byte[]> download(HttpServletRequest req, String m_imgname) throws Exception {
//        String path = req.getServletContext().getRealPath("/WEB-INF/files");
        String path  = req.getServletContext().getRealPath("/imgmenu");
        File f = new File(path, m_imgname);
        /*开始使用spring提供的文件下载  模板***/
        InputStream is = new FileInputStream(f);
        byte[] body = new byte[is.available()];
        is.read(body);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Disposition", "attchement;filename=" + URLEncoder.encode(f.getName(), "UTF-8"));
        HttpStatus statusCode = HttpStatus.OK;//200
        ResponseEntity<byte[]> entity = new ResponseEntity<>(body, headers, statusCode);
        return entity;
    }

    @RequestMapping("/toedit")
    public String toedit(Integer m_id, Model model,HttpSession session) {

        Menu menu = menuService.getMenuByMid(m_id);
        model.addAttribute("menu", menu);

        Store store = (Store) session.getAttribute("user_session");
        List<Category> list = categoryService.getAllBySid(store.getS_id());
        model.addAttribute("categorylist", list);

        return "menu/edit";
    }

    @RequestMapping("/edit")
    public String edit(HttpSession session, HttpServletRequest req, Menu menu) throws Exception, IOException {
//        String path  = req.getServletContext().getRealPath("/WEB-INF/files");
        String path  = req.getServletContext().getRealPath("/imgmenu");
        MultipartFile multFile =  menu.getFile();
        String filename = multFile.getOriginalFilename();//得到文件名
        boolean b = StringUtils.isNotBlank(filename);
        System.out.println("布尔值:是不空的吗==>"+b);
        if (b==true){
            File f = new File(path,filename);
            multFile.transferTo(f);//把上传的文件 写入 指定的文件位置
            //还要把上传相关信息入库
            menu.setM_imgname(filename);
        }

        menuService.updMenuByMid(menu);

        return "redirect:/menu/list";
    }

    @RequestMapping("/delete")
    public void delete(Integer m_id) {
        menuService.delByMid(m_id);
    }

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

        return "front/show";
    }

}
