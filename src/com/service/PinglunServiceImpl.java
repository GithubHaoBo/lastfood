package com.service;

import com.bean.Employee;
import com.bean.Pinglun;
import com.dao.PinglunMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.util.PageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PinglunServiceImpl implements PinglunService {
    @Autowired
    PinglunMapper pinglunMapper;

    @Override
    public List<Pinglun> getPinglunByMid(Integer mid) {
        return pinglunMapper.getPinglunByMid(mid);
    }

    @Override
    public List<Pinglun> getPinglunByStore(Integer pageIndex, PageModel pageModel, List list) {
        //需要做分页
        PageHelper.startPage(pageIndex, pageModel.getPageSize());//第一个参数是第几页，第二个参数一页多少数据

        List<Pinglun> plist = pinglunMapper.getPinglunByStore(list);

        PageInfo<Pinglun> pageInfo = new PageInfo<>(list);
        long total = pageInfo.getTotal();//数据库的表中的总数量
        int totalpage = pageInfo.getLastPage();//总共的页数

        pageModel.setRecordCount((int) total);//总记录数
        pageModel.setPageIndex(pageIndex);//当前页
        pageModel.setTotalSize(totalpage);//总页数
        return plist;
    }

    @Override
    public List<Pinglun> getPinglunByStore(List list) {

        List<Pinglun> plist = pinglunMapper.getPinglunByStore(list);
        return plist;
    }

    @Override
    public List<Pinglun> querylistByStore(List list, String content) {
        content = "%"+ content+"%";
        return pinglunMapper.querylistByStore(list,content );
    }

    @Override
    public void addPinglun(Pinglun pinglun) {
        pinglunMapper.addPinglun(pinglun);
    }
}
