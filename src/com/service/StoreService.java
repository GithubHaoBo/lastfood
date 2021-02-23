package com.service;

import com.bean.Store;

import java.util.List;

public interface StoreService {

    public Store login(String username, String pwd);

    public void register(Store store);

    public Store getStoreBySid(Integer sid);

    public void updStoreBySid(Store store);

    public void updStorePasswordByLoginname(String pwd, String loginname);

    public Store getStoreByLoginname(String loginname);

    public Store getStoreByLoginnameAndFullname(String loginname, String fullname);

    public List<Store> getStoreByShopName(String sname);
}
