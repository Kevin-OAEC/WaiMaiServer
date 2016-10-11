package com.oaec.entity;

/**
 * Created by Kevin on 2016/10/11.
 */
public class Banner {
    private int id;
    private String url;
    private String action;

    public Banner() {
    }

    public Banner(int id, String url, String action) {
        this.id = id;
        this.url = url;
        this.action = action;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    @Override
    public String toString() {
        return "Banner{" +
                "id=" + id +
                ", url='" + url + '\'' +
                ", action='" + action + '\'' +
                '}';
    }
}
