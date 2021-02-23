package com.service;

import com.bean.Category;
import com.bean.Employee;
import com.dao.CategoryMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.util.PageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    CategoryMapper categoryMapper;

    @Override
    public List<Category> getAllBySid(Integer sid) {
        return categoryMapper.getAllBySid(sid);
    }

    @Override
    public Category getOneByCid(Integer cid) {
        return categoryMapper.getOneByCid(cid);
    }

    @Override
    public List<Category> getAllBySid(Integer pageIndex, PageModel pageModel, Integer sid) {
        //需要做分页
        PageHelper.startPage(pageIndex, pageModel.getPageSize());//第一个参数是第几页，第二个参数一页多少数据

        List<Category> list = categoryMapper.getAllBySid(sid);

        PageInfo<Category> pageInfo = new PageInfo<>(list);
        long total = pageInfo.getTotal();//数据库的表中的总数量
        int totalpage = pageInfo.getLastPage();//总共的页数

        pageModel.setRecordCount((int) total);//总记录数
        pageModel.setPageIndex(pageIndex);//当前页
        pageModel.setTotalSize(totalpage);//总页数
        return list;
    }

    @Override
    public List<Category> queryListBySid(String content, Integer sid) {
        content = "%" + content + "%";
        return categoryMapper.queryListBySid(content, sid);
    }

    @Override
    public void addCategory(Category category) {
        categoryMapper.addCategory(category);
    }

    @Override
    public void updCategory(Category category) {
        categoryMapper.updCategory(category);
    }

    @Override
    public void delCategory(Integer cid) {
        categoryMapper.delCategory(cid);
    }
}
