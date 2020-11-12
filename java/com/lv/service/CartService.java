package com.lv.service;

public interface CartService {
    void addProduct(Integer pId, Integer count, Integer colorIndex, Integer speciIndex);

    void delProduct(Integer pId, String color, String speci);
}
