package com.service;

import com.bean.Order;
import com.util.PageModel;

import java.util.List;

public interface OrderService {

    public List<Order> getAllBySid(Integer pageIndex, PageModel pageModel, Integer sid);

    public void updOrderStatusByOid(Integer oid);

    public List<Order> queryList(String content, Integer sid);

    public List<Order> userqueryList(String content, Integer uid);

    public void addOrder(Order order);

    public List<Order> getAllByUid(Integer uid);

}
