package com.oaec.dao.impl;

import com.oaec.dao.FoodTypeDAO;
import com.oaec.entity.FoodType;
import com.oaec.util.CommonDao;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Kevin on 2016/10/12.
 */
public class FoodTypeDaoImpl extends CommonDao<FoodType> implements FoodTypeDAO{
    @Override
    public List<FoodType> queryByMid(int mid) {
        String sql = "select * from food_type where mid = ?";
        List<Object> params = new ArrayList<Object>();
        params.add(mid);
        List<FoodType> foodTypes = executeQuery(sql, FoodType.class, params);
        return foodTypes;
    }
}
