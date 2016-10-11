package com.oaec.action;

import com.alibaba.fastjson.JSON;
import com.oaec.dao.impl.BannerDaoImpl;
import com.oaec.entity.Banner;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * Created by Kevin on 2016/10/11.
 */
public class BannerAction extends ActionSupport {
    private BannerDaoImpl bannerDao = new BannerDaoImpl();
    public void queryAll() throws IOException {
        List<Banner> banners = bannerDao.queryAll();
        String s = JSON.toJSONString(banners);
        HttpServletResponse response = ServletActionContext.getResponse();
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.append(s);
        out.flush();
        out.close();
    }
}
