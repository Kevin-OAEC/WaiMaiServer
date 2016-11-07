package com.oaec.action;

import com.alibaba.fastjson.JSON;
import com.oaec.dao.CartDAO;
import com.oaec.dao.impl.CartDaoImpl;
import com.oaec.entity.Cart;

import java.io.IOException;
import java.util.List;

/**
 * Created by Kevin on 2016/10/16.
 */
public class CartAction extends BaseAction {
    private int uid;
    private int mid;
    private CartDAO cartDAO = new CartDaoImpl();
    private int fid;

    public void add() throws IOException {
        int update = cartDAO.update(uid, mid, fid, CartDAO.MODE_ADD);
        if (update > 0){
            write("{\"result\":\"AddSuccess\"}");
        }else {
            write("{\"result\":\"AddFail\"}");
        }
    }

    public void sub() throws IOException {
        int update = cartDAO.update(uid, mid, fid, CartDAO.MODE_SUB);
        if (update > 0){
            write("{\"result\":\"SubSuccess\"}");
        }else {
            write("{\"result\":\"SubFail\"}");
        }
    }

    public void query() throws IOException {
        List<Cart> list = cartDAO.queryByUidAndMid(uid, mid);
        String s = JSON.toJSONString(list);
        write(s);
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public int getFid() {
        return fid;
    }

    public void setFid(int fid) {
        this.fid = fid;
    }
}
