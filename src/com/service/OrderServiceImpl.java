package com.service;

import com.bean.Menu;
import com.bean.Notice;
import com.bean.Order;
import com.dao.OrderMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.util.PageModel;
import org.aspectj.weaver.ast.Or;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    OrderMapper orderMapper;


    @Override
    public List<Order> getAllBySid(Integer pageIndex, PageModel pageModel, Integer sid) {
        //需要做分页
        PageHelper.startPage(pageIndex, pageModel.getPageSize());//第一个参数是第几页，第二个参数一页多少数据

        List<Order> list = orderMapper.getAllBySid(sid);

        PageInfo<Order> pageInfo = new PageInfo<>(list);
        long total = pageInfo.getTotal();//数据库的表中的总数量
        int totalpage = pageInfo.getLastPage();//总共的页数

        pageModel.setRecordCount((int) total);//总记录数
        pageModel.setPageIndex(pageIndex);//当前页
        pageModel.setTotalSize(totalpage);//总页数
        return list;
    }

    @Override
    public void updOrderStatusByOid(Integer oid) {
        orderMapper.updOrderStatusByOid(oid);
    }

    @Override
    public List<Order> queryList(String content, Integer sid) {
        content = "%" + content + "%";
        return orderMapper.queryList(content, sid);
    }

    @Override
    public List<Order> userqueryList(String content, Integer uid) {
        content = "%" + content + "%";
        return orderMapper.userqueryList(content, uid);
    }

    @Override
    public void addOrder(Order order) {
        orderMapper.addOrder(order);
    }

    @Override
    public List<Order> getAllByUid(Integer uid) {
        return orderMapper.getAllByUid(uid);
    }
}
