package com.oaec.dao;

import com.oaec.entity.Cart;

import java.util.List;

/**
 * Created by Kevin on 2016/10/16.
 */
public interface CartDAO {
    int MODE_ADD = 0;
    int MODE_SUB = 1;
    List<Cart> queryByUidAndMid(int uid, int mid);
    int update(int uid,int mid, int fid, int mode);
}
