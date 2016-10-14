package com.oaec.dao.impl;

import com.oaec.dao.UserDAO;
import com.oaec.entity.User;
import com.oaec.util.CommonDao;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Kevin on 2016/10/13.
 */
public class UserDaoImpl extends CommonDao<User> implements UserDAO {
    @Override
    public User queryByUserNameAndPassword(String userName, String password) {
        User user = null;
        String sql = "select * from user where username = ? and password = ?";
        List<Object> params = new ArrayList<Object>();
        params.add(userName);
        params.add(password);
        List<User> users = executeQuery(sql, User.class, params);
        if (users != null && users.size() >0){
            user = users.get(0);
        }
        return user;
    }

    @Override
    public User queryByUserName(String userName) {
        User user = null;
        String sql = "select * from user where username = ?";
        List<Object> params = new ArrayList<Object>();
        params.add(userName);
        List<User> users = executeQuery(sql, User.class, params);
        if (users != null && users.size() >0){
            user = users.get(0);
        }
        return user;
    }
}
