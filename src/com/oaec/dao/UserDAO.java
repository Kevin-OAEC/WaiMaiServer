package com.oaec.dao;

import com.oaec.entity.User;

/**
 * Created by Kevin on 2016/10/13.
 */
public interface UserDAO {
    public User queryByUserNameAndPassword(String userName, String password);
    public User queryByUserName(String userName);
}
