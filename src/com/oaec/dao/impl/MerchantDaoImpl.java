package com.oaec.dao.impl;

import com.oaec.dao.MerchantDAO;
import com.oaec.entity.Merchant;
import com.oaec.util.CommonDao;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/**
 * Created by Kevin on 2016/10/11.
 */
public class MerchantDaoImpl extends CommonDao<Merchant> implements MerchantDAO {
    @Override
    public List<Merchant> queryAll() {
        String sql = "select * from merchant;";
        List<Merchant> merchants = executeQuery(sql, Merchant.class, null);
        return merchants;
    }

    @Override
    public List<Merchant> queryLimit(int pno, int ps) {
        String sql = "select * from merchant limit ?,?";
        ArrayList<Object> params = new ArrayList<>();
        params.add((pno-1)*ps);
        params.add(ps);
        List<Merchant> merchants = executeQuery(sql, Merchant.class, params);
        return merchants;
    }
}
