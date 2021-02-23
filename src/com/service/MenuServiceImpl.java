package com.service;

import com.bean.Employee;
import com.bean.Menu;
import com.bean.Store;
import com.dao.MenuMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.util.PageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MenuServiceImpl implements MenuService {

    @Autowired
    MenuMapper menuMapper;

    @Override
    public List<Menu> getAllBySid(Integer pageIndex, PageModel pageModel, Integer sid) {
        //需要做分页
        PageHelper.startPage(pageIndex, pageModel.getPageSize());//第一个参数是第几页，第二个参数一页多少数据

        List<Menu> list = menuMapper.getAllBySid(sid);

        PageInfo<Menu> pageInfo = new PageInfo<>(list);
        long total = pageInfo.getTotal();//数据库的表中的总数量
        int totalpage = pageInfo.getLastPage();//总共的页数

        pageModel.setRecordCount((int) total);//总记录数
        pageModel.setPageIndex(pageIndex);//当前页
        pageModel.setTotalSize(totalpage);//总页数
        return list;
    }

    @Override
    public Menu getMenuByMid(Integer mid) {
        return menuMapper.getMenuByMid(mid);
    }

    @Override
    public List<Menu> queryList(String content, Integer sid) {
        content = "%" + content + "%";
        return menuMapper.queryList(content, sid);
    }

    @Override
    public void addMenu(Menu menu) {
        menuMapper.addMenu(menu);
    }

    @Override
    public void updMenuByMid(Menu menu) {
        menuMapper.updMenuByMid(menu);
    }

    @Override
    public void delByMid(Integer mid) {
        menuMapper.delByMid(mid);
    }

    @Override
    public List<Menu> getAllStoreMenu() {
        return menuMapper.getAllStoreMenu();
    }

    @Override
    public List<Menu> getAllStoreMenuByName(String menuname) {
        menuname = "%" + menuname + "%";
        return menuMapper.getAllStoreMenuByName(menuname);
    }

    @Override
    public List<Menu> getAllStoreMenuBySid(Integer sid) {
        return menuMapper.getAllStoreMenuBySid(sid);
    }

    @Override
    public List<Menu> getAllStoreMenuOrderBySales() {
        return menuMapper.getAllStoreMenuOrderBySales();
    }

    @Override
    public void updMenuSalesByMid(Integer m_id, Integer m_sales) {
        menuMapper.updMenuSalesByMid(m_id,m_sales );
    }
}
