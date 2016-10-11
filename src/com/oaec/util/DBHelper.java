package com.oaec.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Created by Kevin on 2016/10/11.
 */
public class DBHelper {

    private static final String URL = "jdbc:mysql://localhost:3306/waimai";
    private static final String USERNAME = "root";
//    private static final String PASSWORD = "1qaz@WSX";
    private static final String PASSWORD = "";

    /**
     * 加载驱动
     */
    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    /**
     * 获取连接
     * @return
     */
    public Connection getConnection() {
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }

    /**
     * 释放资源
     * @param rs
     * @param stm
     * @param conn
     */
    public void close(java.sql.ResultSet rs, java.sql.Statement stm,
                      java.sql.Connection conn) {
        try {
            if (rs != null) {
                rs.close();
                rs = null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            if(stm != null){
                try {
                    stm.close();
                    stm = null;
                } catch (SQLException e) {
                    e.printStackTrace();
                }finally {
                    if(conn != null){
                        try {
                            conn.close();
                            conn = null;
                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                    }
                }

            }
        }

    }

}
