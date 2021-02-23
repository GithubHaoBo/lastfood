package com.service;

import com.bean.Menu;
import com.bean.Notice;
import com.dao.NoticeMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.util.PageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NoticeServiceImpl implements NoticeService {

    @Autowired
    NoticeMapper noticeMapper;

    @Override
    public List<Notice> getAllBySid(Integer pageIndex, PageModel pageModel, Integer sid) {
        //需要做分页
        PageHelper.startPage(pageIndex, pageModel.getPageSize());//第一个参数是第几页，第二个参数一页多少数据

        List<Notice> list = noticeMapper.getAllBySid(sid);

        PageInfo<Notice> pageInfo = new PageInfo<>(list);
        long total = pageInfo.getTotal();//数据库的表中的总数量
        int totalpage = pageInfo.getLastPage();//总共的页数

        pageModel.setRecordCount((int) total);//总记录数
        pageModel.setPageIndex(pageIndex);//当前页
        pageModel.setTotalSize(totalpage);//总页数
        return list;
    }

    @Override
    public Notice getNoticeByNid(Integer nid) {
        return noticeMapper.getNoticeByNid(nid);
    }

    @Override
    public List<Notice> queryList(String content, Integer sid) {
        content = "%" + content + "%";
        return noticeMapper.queryList(content, sid);
    }

    @Override
    public void addNotice(Notice notice) {
        noticeMapper.addNotice(notice);
    }

    @Override
    public void updNoticeByNid(Notice notice) {
        noticeMapper.updNoticeByNid(notice);
    }

    @Override
    public void delByNid(Integer nid) {
        noticeMapper.delByNid(nid);
    }

    @Override
    public List<Notice> getAllStoreNotic() {
        return noticeMapper.getAllStoreNotic();
    }
}
