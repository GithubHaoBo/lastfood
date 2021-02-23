package com.bean;

public class Category {

    private Integer c_id;
    private String c_name;
    private String c_createdate;
    private Integer s_id;

    @Override
    public String toString() {
        return "Category{" +
                "c_id=" + c_id +
                ", c_name='" + c_name + '\'' +
                ", c_createdate='" + c_createdate + '\'' +
                ", s_id=" + s_id +
                '}';
    }

    public Integer getC_id() {
        return c_id;
    }

    public void setC_id(Integer c_id) {
        this.c_id = c_id;
    }

    public String getC_name() {
        return c_name;
    }

    public void setC_name(String c_name) {
        this.c_name = c_name;
    }

    public String getC_createdate() {
        return c_createdate;
    }

    public void setC_createdate(String c_createdate) {
        this.c_createdate = c_createdate;
    }

    public Integer getS_id() {
        return s_id;
    }

    public void setS_id(Integer s_id) {
        this.s_id = s_id;
    }
}
