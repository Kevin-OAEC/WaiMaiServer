package com.oaec.action;

import com.alibaba.fastjson.JSON;
import com.oaec.dao.TestDAO;
import com.oaec.dao.impl.TestDaoImpl;
import com.oaec.entity.Test;

import java.io.IOException;
import java.util.List;

/**
 * Created by Kevin on 2016/10/20.
 */
public class TestAction extends BaseAction {
    private TestDAO testDAO = new TestDaoImpl();
    public void query() throws IOException {
        List<Test> tests = testDAO.test();
        String s = JSON.toJSONString(tests);
        write(s);
    }
}
