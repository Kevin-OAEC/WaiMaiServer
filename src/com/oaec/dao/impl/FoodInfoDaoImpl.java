package com.oaec.dao.impl;

import com.oaec.dao.FoodInfoDAO;
import com.oaec.entity.FoodInfo;
import com.oaec.util.CommonDao;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Kevin on 2016/10/12.
 */
public class FoodInfoDaoImpl extends CommonDao<FoodInfo> implements FoodInfoDAO {
    @Override
    public List<FoodInfo> queryByTid(int tid) {
        String sql = "select * from food_info where tid = ?";
        List<Object> params = new ArrayList<Object>();
        params.add(tid);
        List<FoodInfo> foodInfos = executeQuery(sql, FoodInfo.class, params);
        return foodInfos;
    }
}
