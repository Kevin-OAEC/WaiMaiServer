package com.oaec.dao;

import com.oaec.entity.Merchant;

import java.util.List;

/**
 * Created by Kevin on 2016/10/11.
 */
public interface MerchantDAO {
    public List<Merchant> queryAll();
    public List<Merchant> queryLimit(int pno,int ps);

}
