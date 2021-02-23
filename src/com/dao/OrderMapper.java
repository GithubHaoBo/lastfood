package com.dao;

import com.bean.Category;
import com.bean.Notice;
import com.bean.Order;

import java.util.List;

public interface OrderMapper {

    public List<Order> getAllBySid(Integer sid);

    public List<Order> queryList(String content, Integer sid);

    public List<Order> userqueryList(String content, Integer uid);

    public void updOrderStatusByOid(Integer oid);

    public void addOrder(Order order);


    public List<Order> getAllByUid(Integer uid);


}
