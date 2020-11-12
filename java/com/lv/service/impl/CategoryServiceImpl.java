package com.lv.service.impl;

import com.lv.dao.CategoryDao;
import com.lv.pojo.Category;
import com.lv.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryServiceImpl implements CategoryService {


    @Autowired
    CategoryDao categoryDao;
    @Override
    public List<Category> findAllCategory() {


        return categoryDao.getAllCategory();
    }
}
