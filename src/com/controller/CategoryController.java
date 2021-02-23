package com.controller;

import com.bean.Category;
import com.bean.Employee;
import com.bean.Store;
import com.service.CategoryService;
import com.util.FormatDate;
import com.util.PageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/category")
public class CategoryController {

    @Autowired
    CategoryService categoryService;

    @RequestMapping("/list")
    public String getAll(@RequestParam(defaultValue = "1") Integer pageIndex, HttpSession session, Model model) {

        PageModel pageModel = new PageModel();
        Store store = (Store) session.getAttribute("user_session");
        List<Category> list = categoryService.getAllBySid(pageIndex, pageModel,store.getS_id());

        model.addAttribute("categorylist", list);
        model.addAttribute("pageModel", pageModel);
        return "category/list";
    }

    //查询  对应页面请输入查找内容
    @RequestMapping("/querylist")
    public String queryList(String content, Model model,HttpSession session) {
        if (content != null) {
            content = content.trim();//去掉前后的空格
        }

        Store store = (Store) session.getAttribute("user_session");
        List<Category> querylist = categoryService.queryListBySid(content,store.getS_id());
        model.addAttribute("categorylist", querylist);
        int count = querylist.size();//查询出来的数据总条数
        model.addAttribute("count", count);
        return "category/list";
    }

    @RequestMapping("/toadd")
    public String toadd() {
        return "category/add";
    }

    @RequestMapping("/add")
    public String add(Category category, Model model,HttpSession session) throws Exception {

        Store store = (Store) session.getAttribute("user_session");
        category.setC_createdate(FormatDate.formateDate1(new Date()));
        category.setS_id(store.getS_id());
        categoryService.addCategory(category);

        return "redirect:/category/list";
    }

    //作为跳转来使用
    @RequestMapping("/toedit")
    public String toedit(Integer c_id, Model model) {

        Category category = categoryService.getOneByCid(c_id);
        model.addAttribute("category", category);

        return "category/edit";
    }

    @RequestMapping("/edit")
    public String edit(Category category) {
        category.setC_createdate(FormatDate.formateDate1(new Date()));
        categoryService.updCategory(category);
        return "redirect:/category/list";
    }

    @RequestMapping("/delete")
    public void delete(Integer c_id) {

        categoryService.delCategory(c_id);
    }

}
