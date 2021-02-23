package com.dao;

import com.bean.Store;

import java.util.List;

public interface StoreMapper {

    public Store login(String username, String pwd);

    public void register(Store store);

    public Store getStoreBySid(Integer sid);

    public void updStoreBySid(Store store);

    public Store getStoreByLoginname(String loginname);

    public Store getStoreByLoginnameAndFullname(String loginname, String fullname);

    public void updStorePasswordByLoginname(String pwd, String loginname);

    public List<Store> getStoreByShopName(String sname);

}
