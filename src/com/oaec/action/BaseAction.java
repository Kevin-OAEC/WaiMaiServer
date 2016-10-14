package com.oaec.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Kevin on 2016/10/13.
 */
public class BaseAction extends ActionSupport {
    /**
     * 发送json数据给客户端
     * @param s
     * @throws IOException
     */
    protected void write(String s) throws IOException {
        HttpServletResponse response = ServletActionContext.getResponse();
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.print(s);
        out.flush();
        out.close();
    }
}
