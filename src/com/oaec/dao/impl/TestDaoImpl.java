package com.oaec.dao.impl;

import com.oaec.dao.TestDAO;
import com.oaec.entity.Test;
import com.oaec.util.CommonDao;

import java.util.List;

/**
 * Created by Kevin on 2016/10/20.
 */
public class TestDaoImpl extends CommonDao<Test> implements TestDAO{

    @Override
    public List<Test> test() {
        String sql = "SELECT id,img,`name` FROM merchant";
        List<Test> tests = executeQuery(sql, Test.class, null);
        return tests;
    }
}
