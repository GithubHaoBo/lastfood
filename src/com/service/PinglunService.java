package com.service;

import com.bean.Pinglun;
import com.util.PageModel;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PinglunService {

    public List<Pinglun> getPinglunByMid(Integer mid);

    public List<Pinglun> getPinglunByStore(Integer pageIndex, PageModel pageModel, List list);

    public List<Pinglun> getPinglunByStore(List list);

    public List<Pinglun> querylistByStore(List list, String content);

    public void addPinglun(Pinglun pinglun);

}
