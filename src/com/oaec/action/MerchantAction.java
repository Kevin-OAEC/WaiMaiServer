package com.oaec.action;

import com.alibaba.fastjson.JSON;
import com.oaec.dao.impl.MerchantDaoImpl;
import com.oaec.entity.Merchant;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * Created by Kevin on 2016/10/11.
 */
public class MerchantAction extends BaseAction {

    MerchantDaoImpl merchantDao = new MerchantDaoImpl();
    private int pno;
    private int ps;

    public int getPno() {
        return pno;
    }

    public void setPno(int pno) {
        this.pno = pno;
    }

    public int getPs() {
        return ps;
    }

    public void setPs(int ps) {
        this.ps = ps;
    }

    public void queryAll() throws IOException {
        List<Merchant> merchants = merchantDao.queryAll();
        System.out.println(merchants.size());
        String s = JSON.toJSONString(merchants);
        write(s);
    }

    public void queryLimit() throws IOException {
        List<Merchant> merchants = merchantDao.queryLimit(pno, ps);
        String s = JSON.toJSONString(merchants);
        write(s);
    }

}
