package com.oaec.entity;

/**
 * Created by Kevin on 2016/10/12.
 */
public class FoodType {
    private int id;
    private int mid;
    private String name;

    public FoodType(int id, int mid, String name) {
        this.id = id;
        this.mid = mid;
        this.name = name;
    }

    public FoodType() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "FoodType{" +
                "id=" + id +
                ", mid=" + mid +
                ", name='" + name + '\'' +
                '}';
    }
}
