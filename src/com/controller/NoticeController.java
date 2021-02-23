package com.controller;

import com.bean.Category;
import com.bean.Menu;
import com.bean.Notice;
import com.bean.Store;
import com.service.NoticeService;
import com.service.StoreService;
import com.util.FormatDate;
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
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/notice")
public class NoticeController {

    @Autowired
    NoticeService noticeService;
    @Autowired
    StoreService storeService;

    @RequestMapping("/list")
    public String getAll(@RequestParam(defaultValue = "1") Integer pageIndex, HttpSession session, Model model){

        PageModel pageModel = new PageModel();

        Store store = (Store) session.getAttribute("user_session");
        List<Notice> list = noticeService.getAllBySid(pageIndex, pageModel,store.getS_id());

        model.addAttribute("noticelist", list);
        model.addAttribute("pageModel", pageModel);
        return "notice/list";
    }


    //查询  对应页面请输入查找内容
    @RequestMapping("/querylist")
    public String queryList(String content, Model model,HttpSession session) {
        if (content != null) {
            content = content.trim();//去掉前后的空格
        }

        Store store = (Store) session.getAttribute("user_session");
        List<Notice> querylist = noticeService.queryList(content,store.getS_id());
        model.addAttribute("noticelist", querylist);
        int count = querylist.size();//查询出来的数据总条数
        model.addAttribute("count", count);
        return "notice/list";
    }


    @RequestMapping("/toadd")
    public String toadd() {
        return "notice/add";
    }

    /*上传*/
    @RequestMapping("/add")
    public String add(HttpSession session, HttpServletRequest req, Notice notice) throws Exception, IOException {
//        String path  = req.getServletContext().getRealPath("/WEB-INF/files");
        String path  = req.getServletContext().getRealPath("/imgnotice");
        System.out.println(notice);
        MultipartFile multFile =  notice.getFile();
        String filename = multFile.getOriginalFilename();//得到文件名
        boolean b = StringUtils.isNotBlank(filename);
        System.out.println("布尔值:是不空的吗==>"+b);
        if (b==true){
            File f = new File(path,filename);
            multFile.transferTo(f);//把上传的文件 写入 指定的文件位置
            //还要把上传相关信息入库
            notice.setN_imgname(filename);
        }else {
            filename = "noticenull.jpg";
            notice.setN_imgname(filename);
        }

        //还要把上传相关信息入库
        Store store = (Store) session.getAttribute("user_session");
        notice.setS_id(store.getS_id());
        notice.setN_time(FormatDate.formateDate2(new Date()));

        noticeService.addNotice(notice);

        return "redirect:/notice/list";
    }


    @RequestMapping("/download")
    public ResponseEntity<byte[]> download(HttpServletRequest req, String n_imgname) throws Exception {
//        String path = req.getServletContext().getRealPath("/WEB-INF/files");
        String path  = req.getServletContext().getRealPath("/imgnotice");
        File f = new File(path, n_imgname);
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
    public String toedit(Integer n_id, Model model,HttpSession session) {

        Notice notice = noticeService.getNoticeByNid(n_id);
        model.addAttribute("notice", notice);

        return "notice/edit";
    }

    @RequestMapping("/edit")
    public String edit(HttpSession session, HttpServletRequest req, Notice notice) throws Exception, IOException {
//        String path  = req.getServletContext().getRealPath("/WEB-INF/files");
        String path  = req.getServletContext().getRealPath("/imgnotice");
        MultipartFile multFile =  notice.getFile();
        String filename = multFile.getOriginalFilename();//得到文件名
        boolean b = StringUtils.isNotBlank(filename);
        System.out.println("布尔值:是不空的吗==>"+b);
        if (b==true){
            File f = new File(path,filename);
            multFile.transferTo(f);//把上传的文件 写入 指定的文件位置
            //还要把上传相关信息入库
            notice.setN_imgname(filename);
        }

        notice.setN_time(FormatDate.formateDate2(new Date()));
        noticeService.updNoticeByNid(notice);

        return "redirect:/notice/list";
    }

    @RequestMapping("/delete")
    public void delete(Integer n_id) {
        noticeService.delByNid(n_id);
    }

    @RequestMapping("/findnoticebynid")
    public String findnoticebynid(Integer n_id,Model model){

        Notice notice = noticeService.getNoticeByNid(n_id);
        model.addAttribute("notice",notice );

        Integer s_id = notice.getS_id();
        Store store = storeService.getStoreBySid(s_id);
        model.addAttribute("noticeStore", store);

        return "front/notice";
    }

}
