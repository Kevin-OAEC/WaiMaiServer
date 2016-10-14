package com.oaec.action;

import com.alibaba.fastjson.JSON;
import com.oaec.dao.UserDAO;
import com.oaec.dao.impl.UserDaoImpl;
import com.oaec.entity.User;
import com.opensymphony.xwork2.ActionSupport;

import java.io.IOException;

/**
 * Created by Kevin on 2016/10/13.
 */
public class UserAction extends BaseAction {
    private String userName;
    private String password;
    private UserDAO userDAO = new UserDaoImpl();

    public void login() throws IOException {

        String result = null;
        User user = userDAO.queryByUserName(userName);
        if(user == null){
            result = "{\"result\":\"error\",\"reason\":\"用户名不存在\"}";
        }else if(!user.getPassword().equals(password)){
            result = "{\"result\":\"error\",\"reason\":\"密码错误\"}";
        }else{
            result = JSON.toJSONString(user);
            result = "{\"result\":\"success\",\"user\":"+result+"}";
        }
        write(result);
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
