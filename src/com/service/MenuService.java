package com.service;

import com.bean.Menu;
import com.bean.Store;
import com.util.PageModel;

import java.util.List;

public interface MenuService {

    public List<Menu> getAllBySid(Integer pageIndex, PageModel pageModel, Integer sid);

    public Menu getMenuByMid(Integer mid);

    public List<Menu> queryList(String content, Integer sid);

    public void addMenu(Menu menu);

    public void updMenuByMid(Menu menu);

    public void delByMid(Integer mid);

    public List<Menu> getAllStoreMenu();

    public List<Menu> getAllStoreMenuByName(String menuname);

    public List<Menu> getAllStoreMenuBySid(Integer sid);

    public List<Menu> getAllStoreMenuOrderBySales();

    public void updMenuSalesByMid(Integer m_id,Integer m_sales);
}
