package com.lv.service;

import com.lv.pojo.User;

public interface UserService {


    User findUser(String username, String password);

    void saveUser(User user);

    User findUniqueUsername(String username);
}
