package com.lv.service;

import com.lv.pojo.PageResult;
import com.lv.pojo.Product;

import java.util.List;

public interface ProductService {
    //    cName 分类名称
    public List<Product> getEightProduct(String cName);

    Product findProductById(Integer pId);

    PageResult getMore(Integer cId, Integer pageNum, String orderBy);

    PageResult getList(String keyword, Integer cId, Integer pageNum, String orderBy);

}
