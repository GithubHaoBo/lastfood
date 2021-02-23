package com.dao;

import com.bean.Store;
import com.bean.User;

public interface UserMapper {

    public User login(String username, String pwd);

    public void register(User user);


    public void updUserByUid(User user);

    public User getUserByLoginname(String loginname);

    public User getUserByUid(Integer u_id);

    public User getUserByLoginNameAndCard(String loginname,String card);

    public void updUserPasswordByUid(String pwd, Integer uid);

}
