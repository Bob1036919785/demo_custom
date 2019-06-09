package com.qc.service.impl;

import com.qc.bean.Custom;
import com.qc.dao.CustomDao;
import com.qc.service.CustomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @Author:jiege
 * @Date: 2019/6/2 15:11
 */
@Service("customService")
public class CustomServiceImpl implements CustomService {
    @Autowired
    private CustomDao customDao;
    @Override
    public Custom findAll() {
        Custom customDaoAll = customDao.findAll();
        return customDaoAll;
    }

    @Override
    public int register(Map<String, Object> map) {
       return  customDao.register(map);
    }

    @Override
    public int login(String name,String password) {
        return customDao.login(name,password);
    }

    @Override
    public List<Custom> queryList() {

        return customDao.queryList();

    }

    @Override
    public void deleteCustomByid(String id) {
        customDao.deleteCustomByid(id);
    }

    @Override
    public void doAdd(Custom custom) {
        customDao.doAdd(custom);
    }

    @Override
    public void updateCustom(String id) {

    }

    @Override
    public Custom QueryCustomById(String id) {
        return customDao.QueryCustomById(id);
    }

    @Override
    public void doUpdate(Custom custom) {
        customDao.doUpdate(custom);
    }
}
