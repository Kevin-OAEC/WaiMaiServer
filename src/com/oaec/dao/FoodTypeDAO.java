package com.oaec.dao;

import com.oaec.entity.FoodType;

import java.util.List;

/**
 * Created by Kevin on 2016/10/12.
 */
public interface FoodTypeDAO {
    List<FoodType> queryByMid(int mid);
}
