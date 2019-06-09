package com.qc.service;

import com.qc.bean.Custom;

import java.util.List;
import java.util.Map;

/**
 * @Author:jiege
 * @Date: 2019/6/2 15:10
 */
public interface CustomService {
    Custom findAll();

    int register(Map<String, Object> map);

    int login(String name,String password);

    List<Custom> queryList();

    void deleteCustomByid(String id);

    void doAdd(Custom custom);

    void updateCustom(String id);

    Custom QueryCustomById(String id);

    void doUpdate(Custom custom);
}
