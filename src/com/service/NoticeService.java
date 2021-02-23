package com.service;

import com.bean.Menu;
import com.bean.Notice;
import com.util.PageModel;

import java.util.List;

public interface NoticeService {

    public List<Notice> getAllBySid(Integer pageIndex, PageModel pageModel, Integer sid);

    public Notice getNoticeByNid(Integer Nid);

    public List<Notice> queryList(String content, Integer sid);

    public void addNotice(Notice Notice);

    public void updNoticeByNid(Notice Notice);

    public void delByNid(Integer Nid);

    public List<Notice> getAllStoreNotic();
}
