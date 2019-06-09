package com.qc.dao;

import com.qc.bean.Custom;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * @Author:jiege
 * @Date: 2019/6/2 15:04
 */
@Repository
public interface CustomDao {

    Custom findAll();

    int register(Map<String, Object> map);

    int login(@Param(value = "name") String name,@Param(value = "password") String password);

    List<Custom> queryList();

    void deleteCustomByid(String id);

    void doAdd(Custom custom);

    Custom QueryCustomById(String id);

    void doUpdate(Custom custom);
}
