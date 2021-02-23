package com.service;

import com.bean.Category;
import com.bean.Menu;
import com.util.PageModel;

import java.util.List;

public interface CategoryService {

    public List<Category> getAllBySid(Integer sid);

    public Category getOneByCid(Integer cid);

    public List<Category> getAllBySid(Integer pageIndex, PageModel pageModel, Integer sid);

    public List<Category> queryListBySid(String content, Integer sid);

    public void addCategory(Category category);

    public void updCategory(Category category);

    public void delCategory(Integer cid);
}
