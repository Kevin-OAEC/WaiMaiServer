package com.oaec.util;

import java.lang.reflect.Method;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static org.apache.struts2.interceptor.DateTextFieldInterceptor.DateWord.s;

public class CommonDao<T> extends DBHelper {

     public int executeUpdate(String sql, List<Object> params) {
           int result = 0;
          Connection conn = super.getConnection();
          PreparedStatement pstm = null;
           try {
              pstm = conn.prepareStatement(sql);
               if (params != null && params.size() > 0) {
                    for (int i = 0; i < params.size(); i++) {
                        pstm.setObject(i + 1, params.get(i));
                   }
              }
              result = pstm.executeUpdate();
          } catch (SQLException e) {
              e.printStackTrace();
          } finally {
               super.close(null , pstm, conn);
          }
           return result;
     }

     public List<T> executeQuery(String sql, Class<T> clazz, List<Object> params) {
          List<T> list = new ArrayList<>();
          ResultSet rs = null;
          PreparedStatement pstm = null;
          Connection conn = null;
           try {
               // 连接数据库
              conn = super.getConnection();
               // 实例化语句对象
              pstm = conn.prepareStatement(sql);
               if (params != null && params.size() > 0) {
                    // 从集合中拿值。设置到相应的占位符
                    for (int i = 0; i < params.size(); i++) {
                        pstm.setObject(i + 1, params.get(i));
                   }
              }
               // 执行查询
              rs = pstm.executeQuery();
               // 元数据对象，描述结果集
              ResultSetMetaData rsmd = rs.getMetaData();
               // 获取结果集中列的数量
               int count = rsmd.getColumnCount();
               // 创建一个数组，接收结果集中列的名字
              String[] columnNames = new String[count];
               for (int i = 0; i < count; i++) {
                   columnNames[i] = rsmd.getColumnName(i + 1);
              }

               // 使用字节码拿方法
              Method[] ms = clazz.getMethods();
              List<Method> setters = new ArrayList<Method>();
               /*
               * 过滤掉拿到的方法中不含有set的方法
               * 只保留set方法
               * 将过滤得到的方法添加到集合setters中
               */
               for (int i = 0; i < ms.length; i++) {
                    if (ms[i].getName().startsWith("set" )) {
                        setters.add(ms[i]);
                   }
              }
               /*
               * 目前，将每一行数据都封装到一个对象
               */
               while (rs.next()) {
                   T t = clazz.newInstance(); //t：要执行方法的对象
                    for (String cName : columnNames) {
                        Object obj = rs.getObject(cName);//执行方法时需要的参数
                         for (Method m : setters) {
                              //
                              if (("set" + cName).equalsIgnoreCase(m.getName())) {
                                   /*
                                   * 反射调用方法，m是要执行的方法
                                   * 但是要执行一个方法，得通过“对象.方法”
                                   * t：要执行方法的对象
                                   * obj：执行方法时需要的参数
                                   */
                                   if (obj instanceof java.math.BigDecimal) {
                                      m.invoke(t,     ((java.math.BigDecimal) obj).intValue());
                                  } else {
                                      m.invoke(t, obj);
                                  }
                             }
                        }
                   }
                   list.add(t);
              }
          } catch (Exception e) {
              e.printStackTrace();
          } finally {
               super.close(rs, pstm, conn);
          }
           return list;
     }


}
