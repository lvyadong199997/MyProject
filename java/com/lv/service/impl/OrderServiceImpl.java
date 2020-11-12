package com.lv.service.impl;

import com.lv.dao.OrderDao;
import com.lv.dao.OrderItemDao;
import com.lv.dao.UserDao;
import com.lv.pojo.*;
import com.lv.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired(required = false)
    HttpSession session;

    @Autowired
    UserDao userDao;

    @Autowired
    OrderDao orderDao;

    @Autowired
    OrderItemDao orderItemDao;
    //存储订单

    /**
     * 1 查询 user 对象 获取uId
     * 2 先创建一个Order对象
     * 3 再创建OrderItem对象
     */
    @Override
    public void save(User user, String address, String payMethod) {
        //邮箱
        String email = user.getEmail();
        //用户名
        String username = user.getUsername();
        //电话
        String phoneNum = user.getPhoneNum();
        //订单状态 0表示为代付款 1已经付款
        String oStatus = "0";
        //订单创建时间
        String createTime = new SimpleDateFormat("yyyy-MM-dd  HH:mm:ss").format(new Date());
//        1 查询 user 对象 获取uId
        User use = userDao.findUniqueUsername(username);
        //用户主键
        Integer uId = use.getU_id();


        //从购物车中获取购物项 遍历存储到数据库中
        Cart cart = (Cart) session.getAttribute("cart");
        List<CartItem> itemList = cart.getCartItemList();

//        2 先创建一个Order对象
        Order order = new Order();
        order.setAddress(address);
        order.setCreateTime(createTime);
        order.setoStatus(oStatus);
        order.setPayMethod(Short.parseShort(payMethod));
        order.setPhone(phoneNum);
        order.setU_id(uId);
        //todo 注意这个地方我直接把购物车中的总价钱存到了order对象中 这个地方其实是有安全隐患的 最好还是出现算一遍
        order.setMoney(cart.getTotalPrice().toString());

        orderDao.insertOneOrder(order);
        //获取订单主键 主键回显
        Integer oId = order.getO_id();
        System.out.println(oId);

//        3 再创建OrderItem对象
        for (CartItem item : itemList) {
            //todo 遍历购物车中的数据 把每一个购物项都换成订单项存到数据库中 这里的价格我写的String类型的 注意
            OrderItem orderItem = new OrderItem();
            orderItem.setP_id(item.getpId());
            orderItem.setU_id(uId);
            orderItem.setCount(item.getCount());
            orderItem.setO_id(oId);
            orderItem.setTotal_fee(item.getTotal().toString());
            orderItem.setColor(item.getColor());
            orderItem.setSpeci(item.getSpeci());
            orderItemDao.insertOneOrderItem(orderItem);
        }

    }
}
