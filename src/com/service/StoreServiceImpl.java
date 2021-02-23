package com.service;

import com.bean.Store;
import com.dao.StoreMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StoreServiceImpl implements StoreService {

    @Autowired
    StoreMapper storeMapper;

    @Override
    public Store login(String username, String pwd) {
        Store store = storeMapper.login(username, pwd);
        return store;
    }

    @Override
    public void register(Store store) {
        storeMapper.register(store);
    }

    @Override
    public Store getStoreBySid(Integer sid) {
        return storeMapper.getStoreBySid(sid);
    }

    @Override
    public void updStoreBySid(Store store) {
        storeMapper.updStoreBySid(store);
    }

    @Override
    public void updStorePasswordByLoginname(String pwd, String loginname) {
        storeMapper.updStorePasswordByLoginname(pwd, loginname);
    }

    @Override
    public Store getStoreByLoginname(String loginname) {
        return storeMapper.getStoreByLoginname(loginname);
    }

    @Override
    public Store getStoreByLoginnameAndFullname(String loginname, String fullname) {
        return storeMapper.getStoreByLoginnameAndFullname(loginname, fullname);
    }

    @Override
    public List<Store> getStoreByShopName(String sname) {
        sname = "%" + sname + "%";
        return storeMapper.getStoreByShopName(sname);
    }
}
