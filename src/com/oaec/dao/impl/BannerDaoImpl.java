package com.oaec.dao.impl;

import com.alibaba.fastjson.JSON;
import com.oaec.dao.BannerDAO;
import com.oaec.entity.Banner;
import com.oaec.util.CommonDao;

import java.util.List;

/**
 * Created by Kevin on 2016/10/11.
 */
public class BannerDaoImpl extends CommonDao<Banner> implements BannerDAO {
    @Override
    public List<Banner> queryAll() {
        String sql = "select * from banner";
        List<Banner> banners = executeQuery(sql, Banner.class, null);
        return banners;
    }

    @Override
    public List<Banner> queryByCount(int count) {
        return null;
    }
}
