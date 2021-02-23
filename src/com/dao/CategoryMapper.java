package com.dao;

import com.bean.Category;
import com.bean.Menu;

import java.util.List;

public interface CategoryMapper {

    public List<Category> getAllBySid(Integer sid);

    public Category getOneByCid(Integer cid);

    public List<Category> queryListBySid(String content, Integer sid);

    public void addCategory(Category category);

    public void updCategory(Category category);

    public void delCategory(Integer cid);
}
