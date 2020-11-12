package com.lv.dao;

import com.lv.pojo.Order;

public interface OrderDao {

    //实现了主键回显 order.getO_id
    void insertOneOrder(Order order);


}
