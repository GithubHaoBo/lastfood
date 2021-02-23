package com.service;

import com.bean.User;
import com.dao.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    @Override
    public User login(String username, String pwd) {
        return userMapper.login(username,pwd );
    }

    @Override
    public void register(User user) {
        userMapper.register(user);
    }

    @Override
    public void updUserByUid(User user) {
        userMapper.updUserByUid(user);
    }

    @Override
    public User getUserByLoginname(String loginname) {
        return userMapper.getUserByLoginname(loginname);
    }

    @Override
    public User getUserByUid(Integer u_id) {
        return userMapper.getUserByUid(u_id);
    }

    @Override
    public User getUserByLoginNameAndCard(String loginname, String card) {
        return userMapper.getUserByLoginNameAndCard(loginname,card );
    }

    @Override
    public void updUserPasswordByUid(String pwd, Integer uid) {
        userMapper.updUserPasswordByUid(pwd,uid );
    }
}
