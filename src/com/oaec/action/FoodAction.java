package com.oaec.action;

import com.alibaba.fastjson.JSON;
import com.oaec.dao.FoodInfoDAO;
import com.oaec.dao.FoodTypeDAO;
import com.oaec.dao.impl.FoodInfoDaoImpl;
import com.oaec.dao.impl.FoodTypeDaoImpl;
import com.oaec.entity.Food;
import com.oaec.entity.FoodInfo;
import com.oaec.entity.FoodType;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Kevin on 2016/10/12.
 */
public class FoodAction extends ActionSupport {
    private int mid;
    private int tid;
    private FoodTypeDAO foodTypeDAO = new FoodTypeDaoImpl();
    private FoodInfoDAO foodInfoDAO = new FoodInfoDaoImpl();

    public void queryAll() throws IOException {
        List<FoodType> foodTypes = foodTypeDAO.queryByMid(mid);
        List<Food> foods = new ArrayList<Food>();
        for (FoodType ft: foodTypes ) {
            List<FoodInfo> foodInfos = foodInfoDAO.queryByTid(ft.getId());
            Food food = new Food(ft.getName(), foodInfos);
            foods.add(food);
        }
        String s = JSON.toJSONString(foods);
        write(s);
    }

    public void queryByTid() throws IOException {
        List<FoodInfo> foodInfos = foodInfoDAO.queryByTid(tid);
        String s = JSON.toJSONString(foodInfos);
        write(s);
    }

    /**
     * 发送json数据给客户端
     * @param s
     * @throws IOException
     */
    private void write(String s) throws IOException {
        HttpServletResponse response = ServletActionContext.getResponse();
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.print(s);
        out.flush();
        out.close();
    }

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public int getTid() {
        return tid;
    }

    public void setTid(int tid) {
        this.tid = tid;
    }
}
