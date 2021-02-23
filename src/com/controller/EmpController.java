package com.controller;

import com.bean.Employee;
import com.bean.Store;
import com.mail.MySendMail;
import com.service.EmpService;
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
@RequestMapping("/emp")
public class EmpController {

    @Autowired
    EmpService empService;
    @Autowired
    MySendMail mySendMail;

    @RequestMapping("/list")
    public String getAll(@RequestParam(defaultValue = "1") Integer pageIndex, HttpSession session, Model model) {
//        if (pageIndex == null) {
//            pageIndex = 1;//如果第一次进来默认就是第一页
//        }
        PageModel pageModel = new PageModel();
        Store store = (Store) session.getAttribute("user_session");
        List<Employee> list = empService.getAllBySid(pageIndex, pageModel,store.getS_id());

        model.addAttribute("emplist", list);
        model.addAttribute("pageModel", pageModel);
        return "emp/list";
    }

    //查询  对应页面请输入查找内容
    @RequestMapping("/querylist")
    public String queryList(String content, Model model,HttpSession session) {
        if (content != null) {
            content = content.trim();//去掉前后的空格
        }

        Store store = (Store) session.getAttribute("user_session");
        List<Employee> querylist = empService.queryList(content,store.getS_id());
        model.addAttribute("emplist", querylist);
        int count = querylist.size();//查询出来的数据总条数
        model.addAttribute("count", count);
        return "emp/list";
    }

    @RequestMapping("/toadd")
    public String toadd() {
        return "emp/add";
    }

    @RequestMapping("/add")
    public String add(Employee employee, Model model,HttpSession session) {

        Store store = (Store) session.getAttribute("user_session");
        //给用户发送一个邮件通知
        try {
            mySendMail.sendMail(employee,store);
        } catch (Exception e) {
            model.addAttribute("message", "邮箱无效,请重新输入");
            return "emp/add";
        }

        employee.setE_createdate(FormatDate.formateDate1(new Date()));

        System.out.println("*********"+employee);
        empService.addEmp(employee,store.getS_id() );

        return "redirect:/emp/list";
    }

    //作为跳转来使用
    @RequestMapping("/toedit")
    public String toedit(Integer e_id, Model model) {

        Employee employee = empService.getEmpByEid(e_id);
        model.addAttribute("emp", employee);

        return "emp/edit";
    }

    @RequestMapping("/edit")
    public String edit(Employee employee) {
        System.out.println("所要修改的员工"+employee);
        empService.updEmpByEid(employee);
        return "redirect:/emp/list";
    }

    @RequestMapping("/delete")
    public void delete(Integer e_id) {

        empService.delEmpByEid(e_id);
    }

}
