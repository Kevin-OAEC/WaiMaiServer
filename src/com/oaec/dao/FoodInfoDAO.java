package com.oaec.dao;

import com.oaec.entity.FoodInfo;

import java.util.List;

/**
 * Created by Kevin on 2016/10/12.
 */
public interface FoodInfoDAO {
    List<FoodInfo> queryByTid(int tid);
}
