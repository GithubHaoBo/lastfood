package com.dao;

import com.bean.Notice;

import java.util.List;

public interface NoticeMapper {

    public List<Notice> getAllBySid(Integer sid);

    public Notice getNoticeByNid(Integer Nid);

    public List<Notice> queryList(String content, Integer sid);

    public void addNotice(Notice Notice);

    public void updNoticeByNid(Notice Notice);

    public void delByNid(Integer Nid);

    public List<Notice> getAllStoreNotic();

}
