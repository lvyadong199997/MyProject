package com.lv.dao;

import com.lv.pojo.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {

    public User findUser(@Param("username") String username, @Param("password") String password);

    public void saveUser(User user);

    public User findUniqueUsername(String username);
}
