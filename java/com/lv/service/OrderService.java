package com.lv.service;

import com.lv.pojo.User;

public interface OrderService {
    void save(User user, String address, String payMethod);
}
