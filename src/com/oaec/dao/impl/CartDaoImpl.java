package com.oaec.dao.impl;

import com.oaec.dao.CartDAO;
import com.oaec.entity.Cart;
import com.oaec.util.CommonDao;

import java.util.ArrayList;
import java.util.List;

import static org.apache.struts2.interceptor.DateTextFieldInterceptor.DateWord.s;

/**
 * Created by Kevin on 2016/10/16.
 */
public class CartDaoImpl extends CommonDao<Cart> implements CartDAO {
    @Override
    public List<Cart> queryByUidAndMid(int uid, int mid) {
        String sql = "SELECT cart.id,cart.fid,food_info.`name`,food_info.price,cart.count FROM food_info,`user`,cart WHERE cart.fid = food_info.id AND cart.uid = ? AND cart.mid = ?;";
        List<Object> params = new ArrayList<Object>();
        params.add(uid);
        params.add(mid);
        List<Cart> carts = executeQuery(sql, Cart.class, params);
        return carts;
    }

    @Override
    public int update(int uid, int mid, int fid, int mode) {
        String sql = "SELECT cart.id,cart.fid,food_info.`name`,food_info.price,cart.count FROM food_info,`user`,cart WHERE cart.fid = food_info.id AND cart.uid = ? AND cart.mid = ? AND cart.fid = ?";
        List<Object> params = new ArrayList<Object>();
        params.add(uid);
        params.add(mid);
        params.add(fid);
        List<Cart> list = executeQuery(sql, Cart.class, params);
        if (mode == MODE_ADD){//添加
            //判断购物车中是否存在
            if (list.size()==0){//不存在
                sql = "INSERT INTO cart (uid,mid,fid,count) VALUES (?,?,?,1)";
            }else {//存在
                sql = "UPDATE cart SET count = count+1 WHERE uid = ? AND mid = ? AND fid = ?";
            }
        }else {//删除
            int count = list.get(0).getCount();
            if(count == 1){
                sql = "DELETE FROM cart WHERE uid = ? AND mid = ? AND fid = ?";
            }else {
                sql = "UPDATE cart SET count = count-1 WHERE uid = ? AND mid = ? AND fid = ?";
            }
        }
        int i = executeUpdate(sql, params);
        return i;
    }
}
