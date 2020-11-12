package com.lv.service.impl;

import com.lv.dao.UserDao;
import com.lv.pojo.User;
import com.lv.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserDao userDao;


    @Override
    public User findUser(String username, String password) {
        User user = userDao.findUser(username, password);
        return user;
    }

    @Override
    public void saveUser(User user) {
        userDao.saveUser(user);
    }

    @Override
    public User findUniqueUsername(String username) {
        User user = userDao.findUniqueUsername(username);
        return user;
    }
}
