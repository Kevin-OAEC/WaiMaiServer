package com.oaec.dao;

import com.oaec.entity.Banner;

import java.util.List;

/**
 * Created by Kevin on 2016/10/11.
 */
public interface BannerDAO {
    public List<Banner> queryAll();
    public List<Banner> queryByCount(int count);
}
